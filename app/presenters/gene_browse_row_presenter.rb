class GeneBrowseRowPresenter
  def initialize(gene)
    @gene = gene
  end

  def as_json(options = {})
    {
      name: @gene.name,
      id: @gene.id,
      entrez_id: @gene.entrez_id,
      gene_aliases: @gene.alias_names,
      diseases: @gene.disease_names,
      variant_count: @gene.variant_count,
      evidence_item_count: @gene.evidence_item_count
    }
  end
end
