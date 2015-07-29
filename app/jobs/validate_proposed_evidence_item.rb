class ValidateProposedEvidenceItem < ActiveJob::Base
  def perform(evidence_item)
    attributes = evidence_item.remote_ids
    errors = Hash.new
    gene = process_gene(attributes, errors)
    variant = process_variant(attributes, errors, gene)
    source = process_source(attributes, errors)
    disease = process_disease(attributes, errors)
    drugs = process_drug(attributes, errors)

    if errors.any?
      evidence_item.remote_errors = errors
      evidence_item.status = 'failed'
    else
      evidence_item.status = 'processed'
      evidence_item.variant = variant
      evidence_item.source = source
      evidence_item.drugs = drugs
      evidence_item.disease = disease
    end

    create_event(evidence_item)
    evidence_item.save
  end

  private
  def process_gene(attributes, errors)
    entrez_id = attributes['entrez_id']
    if entrez_id.blank?
      errors[:entrez_id] = 'No entrez id provided!'
      return nil
    end

    get_or_create_gene(entrez_id).tap do |gene|
      errors[:entrez_id] = 'No gene found for provided entrez id' unless gene
    end
  end

  def get_or_create_gene(entrez_id)
    if found_source = Gene.find_by(entrez_id: entrez_id)
      found_source
    elsif (symbol = Scrapers::EntrezGene.get_gene_symbol_from_entrez_id(entrez_id)).present?
      Gene.create(entrez_id: entrez_id, name: symbol, description: '', official_name: '')
    else
      nil
    end
  end

  def process_variant(attributes, errors, gene)
    variant_name = attributes['variant_name']
    if variant_name.blank?
      errors[:variant_name] = 'No variant_name provided'
      return nil
    end

    get_or_create_variant(variant_name.upcase, gene)
  end

  def get_or_create_variant(variant_name, gene)
    if found_variant = Variant.joins(:gene).find_by(name: variant_name, genes: { entrez_id: gene.entrez_id })
      found_variant
    else
      Variant.create(gene: gene, name: variant_name, description: '')
    end
  end

  def process_disease(attributes, errors)
    doid = attributes['doid']
    disease_name = attributes['disease']
    if doid.blank? && disease_name.blank?
      errors[:disease] = 'No disease information provided!'
      return nil
    elsif doid.blank?
      get_or_create_disease_by_name(disease_name)
    else
      get_or_create_disease_by_doid(doid).tap do |disease|
        errors[:disease] = 'No disease found for given DOID' unless disease
      end
    end
  end

  def get_or_create_disease_by_doid(doid)
    doid = doid.sub(/DOID:/i, '')
    if found_disease = Disease.find_by(doid: doid)
      found_disease
    elsif (disease_name = Scrapers::DiseaseOntology.get_name_from_doid(doid)).present?
      Disease.create(doid: doid, name: disease_name)
    else
      nil
    end
  end

  def get_or_create_disease_by_name(disease_name)
    if found_disease = Disease.where('name ILIKE :name', name: disease_name).first
      found_disease
    else
      Disease.create(name: disease_name)
    end
  end

  def process_source(attributes, errors)
    pubmed_id = attributes['pubmed_id']
    if pubmed_id.blank?
      errors[:pubmed_id] = 'No pubmed id provided'
      return nil
    end

    get_or_create_source(pubmed_id).tap do |source|
      errors[:pubmed_id] = 'No source found for pubmed id' unless source
    end
  end

  def get_or_create_source(pubmed_id)
    if found_source = Source.find_by(pubmed_id: pubmed_id)
      found_source
    elsif (citation = Scrapers::PubMed.get_citation_from_pubmed_id(pubmed_id)).present?
      Source.create(description: citation, pubmed_id: pubmed_id)
    else
      nil
    end
  end

  def process_drug(attributes, errors)
    drugs = attributes['drugs']
    if drugs.blank?
      return nil
    end

    drugs.map { |d| get_or_create_drug(d) }.tap do |d|
      errors[:drugs] = 'No drugs found for inputs' unless d.any?
    end
  end

  def get_or_create_drug(drug_name)
    if found_drug = Drug.find_by(name: drug_name)
      found_drug
    else
      Drug.create(name: drug_name)
    end
  end

  def create_event(evidence_item)
    Event.create(
      action: 'submitted',
      originating_user: evidence_item.creator,
      subject: evidence_item
    )
  end
end
