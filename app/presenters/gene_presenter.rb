class GenePresenter
  def initialize(gene)
    @gene = gene
  end

  def as_json(options = {})
    {
      id: @gene.id,
      entrez_name: @gene.name,
      entrez_id: @gene.entrez_id,
      description: @gene.description,
      clinical_description: @gene.clinical_description,
      gene_category: @gene.categories.map(&:name),
      gene_pathway: @gene.pathways.map(&:name),
      protein_motif: @gene.protein_motifs.map(&:name),
      protein_functions: @gene.protein_functions.map(&:name),
      variants: @gene.variants.map(&:name)
    }.merge(errors)
  end

  private
  def errors
    if @gene.errors.any?
      {
        errors: @gene.errors.to_hash
      }
    else
      {}
    end
  end
end
