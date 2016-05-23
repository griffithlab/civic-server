class VariantGroupDetailPresenter < VariantGroupIndexPresenter
  def as_json(opts = {})
    super.merge({
      lifecycle_actions: LifecyclePresenter.new(variant_group)
    })
  end
end
