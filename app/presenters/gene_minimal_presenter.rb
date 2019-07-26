class GeneMinimalPresenter
  attr_reader :gene

  def initialize(gene)
    @gene = gene
  end

  def as_json(opts = {})
    {
      id: gene.id,
      name: gene.name,
      entrez_id: gene.entrez_id,
      aliases: gene.gene_aliases.map(&:name),
    }
  end
end
