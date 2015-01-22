class VariantGroupPresenter
  def initialize(variant_group, with_variants = false)
    @variant_group = variant_group
    @with_variants = with_variants
  end

  def as_json(options = {})
    {
      id: @variant_group.id,
      name: @variant_group.name,
      description: @variant_group.description
    }.merge(variants)
  end

  private
  def variants
    if @with_variants
      {
        variants: @variant_group.variants.map { |v| VariantPresenter.new(v) }
      }
    else
      {}
    end
  end
end
