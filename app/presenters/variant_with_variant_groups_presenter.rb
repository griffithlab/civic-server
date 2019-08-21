class VariantWithVariantGroupsPresenter < VariantIndexPresenter
  def as_json(opts = {})
    super.merge(
      {
        variant_groups: variant.variant_groups.distinct.map { |vg| VariantGroupIndexPresenter.new(vg) }
      }
    )
  end
end
