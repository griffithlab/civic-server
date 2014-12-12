class GeneVariantRowPresenter
  def initialize(variant)
    @variant = variant
  end

  def as_json
    {
      entrez_gene: entrez_name,
      entrez_id: entrez_id,
      variant: variant,
      variant_id: variant_id,
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

  def variant_id
    @variant.id
  end
end
