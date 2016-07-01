class VariantMinimalPresenter
  attr_reader :variant

  def initialize(variant)
    @variant = variant
  end

  def as_json(opts = {})
    {
      id: variant.id,
      name: variant.name,
      gene_name: variant.gene.name,
      gene_id: variant.gene.id
    }
  end
end
