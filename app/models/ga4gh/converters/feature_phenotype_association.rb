module Ga4gh; module Converters
  class FeaturePhenotypeAssociation
    attr_reader :diseases

    def initialize(diseases)
      @diseases = diseases
    end

    def to_ga4gh
      diseases.map do |disease|
        {
          id: nil,
          phenotypeAssociationSetId: nil,
          featureIds: feature_ids(disease),
          evidence: evidence(disease),
          phenotype: Ga4gh::Converters::PhenotypeDisease.new(disease).to_ga4gh,
          description: '',
          environmentalContexts: environmental_contexts,
          info: evidence_item_variant_associations
        }
      end
    end

    private
    def feature_ids(disease)
      disease.evidence_items.map(&:variant).map(&:id).map(&:to_s).uniq
    end

    def evidence(disease)
      disease.evidence_items.map do |ei|
        Ga4gh::Converters::EvidenceItem.new(ei).to_ga4gh
      end
    end

    def evidence_item_variant_associations
      {
        featureEvidenceMappings: diseases.flat_map(&:evidence_items).map do |ei|
          {
            evidenceId: ei.id,
            featureId: ei.variant.id
          }
        end
      }
    end

    def environmental_contexts
      [
        {
          id: nil,
          description: 'cancer',
          environmentType: {
            id: 'http://purl.obolibrary.org/obo/OBI_1110053',
            term: 'cancer',
            sourceName: 'Ontology for Biomedical Investigation',
            sourceVersion: ''
          }
        }
      ]
    end
  end
end; end
