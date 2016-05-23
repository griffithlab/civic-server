class GeneDetailPresenter < GeneIndexPresenter
  attr_reader :gene

  def initialize(gene)
    @gene = gene
  end

  def as_json(options = {})
    super.merge(
      variant_groups: variant_groups,
      lifecycle_actions: LifecyclePresenter.new(gene),
      sources: sources,
      errors: gene.errors.to_h
    )
  end

  private
  def variant_groups
    gene.variant_groups.map { |vg| VariantGroupIndexPresenter.new(vg) }
  end

  def sources
    gene.sources.map do |s|
      {
        citation: s.description,
        pubmed_id: s.pubmed_id,
        source_url: source_url(s)
      }
    end
  end

  def source_url(s)
    "http://www.ncbi.nlm.nih.gov/pubmed/#{s.pubmed_id}"
  end
end
