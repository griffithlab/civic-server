class GeneDetailPresenter < GeneIndexPresenter
  attr_reader :gene

  def initialize(gene)
    @gene = gene
  end

  def as_json(options = {})
    super.merge(
      variant_groups: variant_groups,
      lifecycle_actions: LifecyclePresenter.new(gene),
      sources: gene.sources.map { |s| SourcePresenter.new(s) },
      errors: gene.errors.to_h
    )
  end

  private
  def variant_groups
    gene.variant_groups.map { |vg| VariantGroupIndexPresenter.new(vg) }
  end
end
