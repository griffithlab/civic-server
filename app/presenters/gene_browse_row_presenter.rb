class GeneBrowseRowPresenter
  def initialize(gene)
    @gene = gene
  end

  def as_json(options = {})
    {
      entrez_gene: @gene.name,
      entrez_id: @gene.entrez_id,
      gene_aliases: @gene.gene_aliases.map(&:name),
      diseases: diseases,
      variant_count: variant_count,
      evidence_item_count: evidence_item_count
    }
  end

  private
  def diseases
    @gene.variants.flat_map(&:evidence_items)
      .map(&:disease)
      .map(&:name)
      .sort
      .uniq
  end

  def variant_count
    @gene.variants.size
  end

  def evidence_item_count
    @gene.variants.inject(0) { |sum, variant| sum + variant.evidence_items.size }
  end
end
