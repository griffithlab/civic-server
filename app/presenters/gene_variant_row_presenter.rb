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
      diseases: diseases,
      evidence_item_count: evidence_item_count
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

  def diseases
    @variant.evidence_items
      .map(&:disease)
      .map(&:name)
      .uniq
  end

  def evidence_item_count
    @variant.evidence_items.size
  end
end
