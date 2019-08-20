class VariantBrowseRowPresenter
  def initialize(variant)
    @variant = variant
  end

  def as_json
    {
      entrez_gene: @variant.entrez_name,
      entrez_id: @variant.entrez_id,
      gene_id: @variant.gene_id,
      variant: @variant.name,
      variant_id: @variant.id,
      diseases: @variant.disease_names,
      evidence_item_count: @variant.evidence_item_count,
      assertion_count: @variant.assertion_count,
      drugs: @variant.drug_names.compact,
      civic_actionability_score: @variant.civic_actionability_score,
    }
  end
end
