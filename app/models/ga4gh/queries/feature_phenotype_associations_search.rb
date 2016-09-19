require 'ga4gh/genotype_phenotype_service_pb'

module Ga4gh; module Queries
  class FeaturePhenotypeAssociationsSearch
    include WithPagination

    attr_reader :request, :response, :errors

    def initialize(request_body)
      @errors = []
      @request = Ga4gh::SearchGenotypePhenotypeRequest.decode_json(request_body)
      @response = Ga4gh::SearchGenotypePhenotypeResponse.new
    rescue => e
      @errors << e.message
    end

    def perform
      evidence_query = request.evidence_query
      variant_ids = request.feature_ids
      disease_ids = request.phenotype_ids

      if evidence_query || variant_ids || disease_ids
        initial_diseases = Disease.eager_load(evidence_items: [:source, variant: [:gene, :variant_types]])
        if disease_ids && disease_ids.any?
          initial_diseases = initial_diseases.where(id: disease_ids)
        end

        if variant_ids && variant_ids.any?
          initial_diseases = initial_diseases.where(evidence_items: { variants: {id: variant_ids }})
        end

        if evidence_query
          initial_diseases = process_evidence_query(evidence_query, initial_diseases)
        end

        response.associations = Ga4gh::Converters::FeaturePhenotypeAssociation.new(diseases).to_ga4gh
        response.next_page_token = next_page_token(initial_diseases)
      else
        @errors << 'Please specify at least one of the following: features, phenotypes, evidence'
      end
    end

    def success?
      errors.none?
    end

    private
    def process_evidence_query(evidence_query, db_query)
      if evidence_query.evidenceType.present?
        @errors << 'Evidence Type query is not currently supported'
      end

      if evidence_query.description.present?
        db_query = db_query.where('evidence_items.description ILIKE ?', "%#{evidence_query.description}%")
      end

      if evidence_query.external_identifiers.present?
        evidence_query.external_identifiers.each do |ext_id|
          converter = Ga4gh::Converters::ExternalIdentifier.new(ext_id)
          if converter.is_supported?
            db_query = converter.filter(db_query)
          else
            @errors << converter.error
          end
        end
      end
      db_query
    end
  end
end; end
