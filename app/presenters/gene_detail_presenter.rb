class GeneDetailPresenter < GeneIndexPresenter
  attr_reader :gene

  def initialize(gene)
    @gene = gene
  end

  def as_json(options = {})
    super.merge(
      lifecycle_actions: LifecyclePresenter.new(gene),
      sources: gene.sources.map { |s| SourcePresenter.new(s) },
      provisional_values: ProvisionalValuesPresenter.new(gene),
      errors: gene.errors.to_h
    )
  end
end
