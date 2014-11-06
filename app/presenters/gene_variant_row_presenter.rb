class GeneVariantRowPresenter
  def initialize(variant)
    @variant = variant
  end

  def as_json
    {
      entrez_gene: entrez_name,
      entrez_id: entrez_id,
      variant: variant,
      gene_categories: category,
      protein_functions: protein_function
    }
  end

  private
  def entrez_name
    @variant.gene.name
  end

  def entrez_id
    @variant.gene.entrez_id
  end

  def variant
    @variant.name
  end

  def category
    @variant.gene.categories.map(&:name)
  end

  def protein_function
    @variant.gene.protein_functions.map(&:name)
  end
end
