class EvidenceItemPresenter
  def initialize(item)
    @item = item
  end

  def as_json(options = {})
      {
        id: @item.id,
        explanation: @item.explanation,
        disease: @item.disease.name,
        source: @item.source.pubmed_id,
        drug: @item.drug.name,
        rating: @item.current_rating,
        evidence_level: @item.evidence_level.level,
        evidence_type: @item.evidence_type.evidence_type,
        outcome: @item.outcome,
        clinical_direction: @item.clinical_direction
      }
  end
end
