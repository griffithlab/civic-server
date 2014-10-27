class VariantPresenter
  def initialize(variant)
    @variant = variant
  end

  def as_json(options = {})
    {
      name: @variant.name,
      description: @variant.description,
      evidence_items: evidence_items
    }
  end

  private
  def evidence_items
    @variant.evidence_items.map do |ei|
      {
        explanation: ei.explanation,
        disease: ei.disease.name,
        source: ei.source.pubmed_id,
        drug: ei.drug.name,
        rating: ei.current_rating,
        evidence_level: ei.evidence_level.level,
        evidence_type: ei.evidence_type.evidence_type
      }
    end
  end
end
