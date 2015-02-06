class VariantPresenter
  def initialize(variant, with_evidence_items = false, with_variant_groups = false)
    @variant = variant
    @with_evidence_items = with_evidence_items
    @with_variant_groups = with_variant_groups
  end

  def as_json(options = {})
    {
      id: @variant.id,
      entrez_name: @variant.gene.name,
      entrez_id: @variant.gene.entrez_id,
      name: @variant.name,
      description: @variant.description,
    }.merge(evidence_items)
      .merge(errors)
      .merge(variant_groups)
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

  def variant_groups
    if @with_variant_groups
    {
      variant_groups: @variant.variant_groups.map { |vg| VariantGroupPresenter.new(vg) }
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
