module Ga4gh; module Converters
  class EvidenceItem
    attr_reader :evidence_item

    def initialize(evidence_item)
      @evidence_item = evidence_item
    end

    def to_ga4gh
      {
        evidenceType: nil,
        description: evidence_item.description,
        info: evidence_item_info
      }
    end

    private
    def evidence_item_info
      {
        featureId: evidence_item.variant.id,
        pubmedId: evidence_item.source.pubmed_id,
        rating: evidence_item.rating,
        evidenceLevel: evidence_item.evidence_level,
        civicEvidenceType: evidence_item.evidence_type,
        variantOrigin: evidence_item.variant_origin,
        evidenceDirection: evidence_item.evidence_direction,
        clinicalSignificance: evidence_item.clinical_significance,
        drugs: evidence_item.drugs.map(&:name),
        drugInteractionType: evidence_item.drug_interaction_type,
        civicId: evidence_item.id
      }
    end
  end
end; end