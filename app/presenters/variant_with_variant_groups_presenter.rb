class VariantWithVariantGroupsPresenter < VariantIndexPresenter
  def as_json(opts = {})
    super.merge(
      {
        variant_groups: variant.variant_groups.iq.map { |vg| VariantGroupIndexPresenter.new(vg) }
      }
    )
  end
end
