class EvidenceItemPresenter
  def initialize(item)
    @item = item
  end

  def as_json(options = {})
    {
        id: @item.id,
        text: @item.text,
        disease: @item.disease.name,
        source: @item.source.pubmed_id,
        drug: @item.drug.name,
        rating: @item.rating,
        evidence_level: @item.evidence_level.level,
        evidence_type: @item.evidence_type.evidence_type,
        outcome: @item.outcome,
        clinical_direction: @item.clinical_direction
    }.merge(errors)
  end

  private
  def errors
    if @item.errors.any?
      {
          errors: @item.errors.to_hash
      }
    else
      {}
    end
  end
end
