class VariantPresenter
  def initialize(variant)
    @variant = variant
  end

  def as_json(options = {})
    {
      id: @variant.id,
      entrez_name: @variant.gene.name,
      name: @variant.name,
      description: @variant.description,
      evidence_items: evidence_items
    }
  end

  private
  def evidence_items
    @variant.evidence_items.map { |ei| EvidenceItemPresenter.new(ei) }
  end
end
