module Importer
  class ClinicalActionEvidenceAdaptor
    def valid_row?(row)
      if row['DOID'].blank?
        disease_name = row['Disease']
        if d = Disease.where('name ILIKE ?', disease_name.downcase).first
          row['DOID'] = d.doid
        elsif d = Disease.where('name ILIKE ?', disease_name.downcase + " cancer").first
          row['DOID'] = d.doid
        end
      end

      pubmed_id = row['Source']
      if pubmed_id.present? && Source.find_by(pubmed_id: pubmed_id).blank?
        citation = Scrapers::PubMed.get_citation_from_pubmed_id(pubmed_id)
        if citation.present?
          Source.create(pubmed_id: pubmed_id, description: citation)
          row['pubmed_id'] = pubmed_id
        end
      end
      result = row['Include?'] == '2' && required_fields.inject(true) { |val, cur| val && !row[cur].blank? }
      result
    end

    def create_entities_for_row(row)
      variant_name = row['variant'].upcase.strip
      entrez_id = row['entrez_id']

      variant = Variant.joins(:gene).find_by(name: variant_name, 'genes.entrez_id' => entrez_id)
      unless variant
        gene = Gene.find_by(entrez_id: entrez_id)
        unless gene
          symbol = Scrapers::EntrezGene.get_gene_symbol_from_entrez_id(entrez_id)
          gene = Gene.new(entrez_id: entrez_id, name: symbol, description: '')
          Scrapers::MyGeneInfo.populate_gene_metadata(gene)
        end
        variant = Variant.create(gene: gene, name: variant_name, description: '')
      end

      disease = EntityMaps::Disease.get_entity_from_row(row)
      source = EntityMaps::Source.get_entity_from_row(row)
      drugs = EntityMaps::Drug.get_entity_from_row(row)
      evidence_item = EntityMaps::EvidenceItem.get_entity_from_row(
        row,
        variant: variant,
        disease: disease,
        source: source,
        status: 'accepted'
      )
      evidence_item.save

      drugs.each { |drug| evidence_item.drugs << drug }

      make_variant_groups(variant, row)
    rescue ActiveRecord::RecordNotFound
      puts "Variant named #{variant_name} for gene #{entrez_id} not found!"
    end

    private
    def required_fields
      [
        'entrez_gene',
        'variant',
        'DOID',
        'Source',
      ]
    end

    def make_variant_groups(variant, row)
      EntityMaps::VariantGroup.get_entity_from_row(row).each do |variant_group|
        variant.variant_groups << variant_group
      end
    end
  end
end
