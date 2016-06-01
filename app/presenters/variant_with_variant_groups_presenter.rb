class VariantWithVariantGroupsPresenter < VariantIndexPresenter
  def as_json(opts = {})
    super.merge(
      {
        variant_groups: variant.variant_groups.uniq.map(&:name)
      }
    )
  end
end
