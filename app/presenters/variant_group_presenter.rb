class VariantGroupPresenter
  attr_reader :variant_group, :with_lifecycle

  def initialize(variant_group, with_lifecycle = true)
    @with_lifecycle = with_lifecycle
    @variant_group = variant_group
  end

  def as_json(options = {})
    {
      id: variant_group.id,
      name: variant_group.name,
      description: variant_group.description,
      variants: variants,
      type: :variant_group,
    }.merge(lifecycle_actions)
  end

  private
  def variants
    variant_group.variants.uniq.map { |v| VariantPresenter.new(v) }
  end

  def lifecycle_actions
    if with_lifecycle
      {
        lifecycle_actions: LifecyclePresenter.new(variant_group)
      }
    else
      {}
    end
  end
end
