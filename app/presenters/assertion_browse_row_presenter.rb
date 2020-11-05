class AssertionBrowseRowPresenter
  def initialize(assertion)
    @assertion = assertion
  end

  def as_json
    {
      id: @assertion.id,
      summary: @assertion.summary,
      gene_name: @assertion.gene_name,
      gene_id: @assertion.gene_id,
      gene_entrez_id: @assertion.gene_entrez_id,
      disease: @assertion.disease_name,
      variant_name: @assertion.variant_name,
      variant_id: @assertion.variant_id,
      drugs: @assertion.drug_names,
      drug_interaction_type: @assertion.drug_interaction_type,
      evidence_type: @assertion.evidence_type,
      evidence_direction: @assertion.evidence_direction,
      clinical_significance: @assertion.clinical_significance,
      phenotypes: @assertion.phenotype_hpo_classes,
      amp_level: @assertion.amp_level,
      amp_level_short: @assertion.amp_level.nil? ? nil : @assertion.amp_level.gsub('Tier ', '').gsub(' - Level ', ''),
      status: @assertion.status,
      evidence_item_count: @assertion.evidence_item_count,
      open_change_count: @assertion.open_changes.size,
      pending_evidence_count: @assertion.pending_evidence.size,
    }
  end
end
