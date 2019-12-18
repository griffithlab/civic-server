class GeneWithLifecycleActionsPresenter < GeneIndexPresenter
  attr_reader :gene

  def initialize(gene)
    @gene = gene
  end

  def as_json(options = {})
    super.merge(
      lifecycle_actions: LifecyclePresenter.new(gene),
    )
  end
end
