class VariantBrowseRowPresenter
  def initialize(variant)
    @variant = variant
  end

  def as_json
    {
      entrez_gene: @variant.entrez_name,
      entrez_id: @variant.entrez_id,
      variant: @variant.name,
      variant_id: @variant.id,
      diseases: @variant.disease_names,
      evidence_item_count: @variant.evidence_item_count,
    }
  end
end
