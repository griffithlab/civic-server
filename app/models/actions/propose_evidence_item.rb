module Actions
  class ProposeEvidenceItem
    include Actions::Transactional
    attr_reader :evidence_item, :originating_user, :direct_attributes, :relational_attributes, :source_suggestion_id

    def initialize(direct_attributes, relational_attributes, source_suggestion_id, originating_user)
      @direct_attributes = direct_attributes
      @relational_attributes = relational_attributes
      @originating_user = originating_user
      @source_suggestion_id = source_suggestion_id
    end

    private
    def execute
      direct_attributes[:status] = 'submitted'
      evidence_item = EvidenceItem.new(direct_attributes).tap do |item|
        item.variant = get_variant(relational_attributes)
        item.disease = get_disease(relational_attributes)
        item.source = get_source(relational_attributes)
        item.drugs = get_drugs(relational_attributes)
        item.phenotypes = get_phenotypes(relational_attributes)
        item.save
      end
      Event.create(
        action: 'submitted',
        originating_user: originating_user,
        subject: evidence_item
      )
      evidence_item.subscribe_user(originating_user)
      process_source_suggestion
      @evidence_item = evidence_item
    end

    def get_variant(params)
      #check case insensitive first
      if variant = Variant.joins(:gene)
        .where(genes: { id: params[:gene][:id] })
        .where('lower(variants.name) = ?', params[:variant][:name].downcase).first
        variant
      else
        Variant.create(gene: Gene.find_by(id: params[:gene][:id]), name: params[:variant][:name], description: '')
      end
    end

    def get_disease(params)
      if params[:noDoid]
        proposed_name = Disease.capitalize_name(params[:disease_name])
        Disease.where(display_name: proposed_name, name: proposed_name).first_or_create
      else
        Disease.find_by(id: params[:disease][:id])
      end
    end

    def get_source(params)
      pubmed_id = params[:pubmed_id]
      if found_source = Source.find_by(pubmed_id: pubmed_id)
        found_source
      else
        Source.new(pubmed_id: pubmed_id).tap do |source|
          Scrapers::PubMed.populate_source_fields(source)
        end
      end
    end

    def get_drugs(params)
      Array(params[:drugs]).map do |drug_name|
        if found_drug = Drug.where('lower(name) = ?', drug_name.downcase).first
          found_drug
        else
          Drug.create(name: drug_name)
        end
      end
    end

    def get_phenotypes(params)
      Array(params[:phenotypes]).map{ |hpo_id| Phenotype.find_by(hpo_id: hpo_id)) }.sort.uniq
    end

    def process_source_suggestion
      if suggestion = SourceSuggestion.find_by(id: source_suggestion_id)
        suggestion.status = 'curated'
        suggestion.save
        if suggestion.source.status == 'partially curated' && source.source_suggestions.none? { |s| s.status == 'new' }
          suggestion.source.status = 'fully curated'
          suggestion.source.save
        end
      end
    end
  end
end
