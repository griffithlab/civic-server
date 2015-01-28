class VariantPresenter
  def initialize(variant, with_evidence_items = false)
    @variant = variant
    @with_evidence_items = with_evidence_items
  end

  def as_json(options = {})
    {
      id: @variant.id,
      entrez_name: @variant.gene.name,
      name: @variant.name,
      description: @variant.description,
    }.merge(evidence_items).merge(errors)
  end

  private
  def evidence_items
    if @with_evidence_items
      {
        evidence_items: @variant.evidence_items.map { |ei| EvidenceItemPresenter.new(ei) }
      }
    else
      {}
    end
  end

  def errors
    if @variant.errors.any?
      {
        errors: @variant.errors.to_hash
      }
    else
      {}
    end
  end
end
