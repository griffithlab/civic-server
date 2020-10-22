class GeneIndexPresenter
  attr_reader :gene

  def initialize(gene)
    @gene = gene
  end

  def as_json(opts = {})
    {
      id: gene.id,
      name: gene.name,
      entrez_id: gene.entrez_id,
      description: gene.description,
      flagged: gene.flagged,
      variants: variants,
      aliases: gene.gene_aliases.map(&:name),
      type: :gene
    }
  end

  private
  def variants
    gene.variants.map do |variant|
      {
        name: variant.name,
        id: variant.id,
        evidence_items: EvidenceItemsByStatusPresenter.new(variant)
      }
    end
  end
end
