class GeneVariantRowPresenter
  def initialize(event)
    @event = event
  end

  def as_json
    {
      entrez_gene: entrez_name,
      entrez_id: entrez_id,
      variant: variant,
      gene_category: category,
      pretein_function: protein_function
    }
  end

  private
  def entrez_name
    @event.gene.name
  end

  def entrez_id
    @event.gene.entrez_id
  end

  def variant
    @event.name
  end

  def category
    @event.gene.categories.map(&:name)
  end

  def protein_function
    @event.gene.protein_functions.map(&:name)
  end
end
