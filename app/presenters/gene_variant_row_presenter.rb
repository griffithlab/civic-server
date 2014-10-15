class GeneVariantRowPresenter
  def initialize(event)
    @event = event
  end

  def as_json
    [
      entrez_name,
      entrez_id,
      variant,
      category,
      protein_function
    ]
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
