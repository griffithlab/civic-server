class VariantGroupPresenter
  def initialize(variant_group)
    @variant_group = variant_group
  end

  def as_json(options = {})
    {
      id: @variant_group.id,
      name: @variant_group.name,
      description: @variant_group.description
    }
  end
end
