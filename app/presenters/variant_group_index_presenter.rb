class VariantGroupIndexPresenter
  attr_reader :variant_group

  def initialize(variant_group)
    @variant_group = variant_group
  end

  def as_json(opts = {})
    {
      id: variant_group.id,
      name: variant_group.name,
      description: variant_group.description,
      variants: variants,
      type: :variant_group,
      flagged: variant_group.flagged
    }
  end

  private
  def variants
    variant_group.variants.distinct.map { |v| VariantIndexPresenter.new(v) }
  end
end
