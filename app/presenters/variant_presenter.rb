class VariantPresenter
  def initialize(variant, with_evidence_items = false, with_variant_groups = false, with_last_modified = false)
    @variant = variant
    @with_evidence_items = with_evidence_items
    @with_variant_groups = with_variant_groups
    @with_last_modified = with_last_modified
  end

  def as_json(options = {})
    {
      id: @variant.id,
      entrez_name: @variant.gene.name,
      gene_id: @variant.gene.id,
      entrez_id: @variant.gene.entrez_id,
      name: @variant.name,
      description: @variant.description,
      type: :variant
    }.merge(evidence_items)
      .merge(errors)
      .merge(variant_groups)
      .merge(last_modified)
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

  def last_modified
    if @with_last_modified
      {
        last_modified: LastModifiedPresenter.new(@variant)
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
