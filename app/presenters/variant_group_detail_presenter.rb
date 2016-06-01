class VariantGroupDetailPresenter < VariantGroupIndexPresenter
  def as_json(opts = {})
    super.merge({
      lifecycle_actions: LifecyclePresenter.new(variant_group),
      variants: variant_group.variants.uniq.map { |v| VariantWithVariantGroupsPresenter.new(v) }
    })
  end
end
