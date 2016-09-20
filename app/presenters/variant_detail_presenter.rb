class VariantDetailPresenter < VariantIndexPresenter
  def as_json(opts = {})
    super.merge(
      {
        evidence_items: variant.evidence_items.map { |ei| EvidenceItemIndexPresenter.new(ei) },
        variant_groups: variant.variant_groups.map { |vg| VariantGroupIndexPresenter.new(vg) },
        variant_aliases: variant.variant_aliases.map(&:name),
        hgvs_expressions: variant.hgvs_expressions.map(&:expression),
        lifecycle_actions: LifecyclePresenter.new(variant),
        sources: variant.sources.map { |s| SourcePresenter.new(s) },
        errors: variant.errors.to_h
      }
    )
  end
end
