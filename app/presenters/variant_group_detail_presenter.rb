class VariantGroupDetailPresenter < VariantGroupIndexPresenter
  def as_json(opts = {})
    super.merge({
      lifecycle_actions: LifecyclePresenter.new(variant_group),
      variants: variant_group.variants.distinct.map { |v| VariantWithVariantGroupsPresenter.new(v) },
      sources: variant_group.sources.map { |s| SourcePresenter.new(s) },
    })
  end
end
