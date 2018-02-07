class AssertionDetailPresenter < AssertionIndexPresenter
  def as_json(opts = {})
    super.merge(
      {
        gene: {name: assertion.gene.name, id: assertion.gene.id},
        variant: {name: assertion.variant.name, id: assertion.variant.id},
        disease: DiseasePresenter.new(assertion.disease),
        nccn_guideline: assertion.nccn_guideline,
        nccn_guideline_version: assertion.nccn_guideline_version,
        evidence_type: assertion.evidence_type,
        evidence_direction: assertion.evidence_direction,
        amp_level: assertion.amp_level,
        clinical_significance: assertion.clinical_significance,
        evidence_items: assertion.evidence_items.map { |ei| EvidenceItemWithStateParamsPresenter.new(ei) },
        acmg_codes: assertion.acmg_codes(true).map { |ac| AcmgCodeIndexPresenter.new(ac) },
        drugs: assertion.drugs.map { |d| DrugPresenter.new(d) },
        drug_interaction_type: assertion.drug_interaction_type,
        fda_companion_test: assertion.fda_companion_test,
        allele_registry_id: assertion.variant.allele_registry_id,
        lifecycle_actions: LifecyclePresenter.new(assertion),
        provisional_values: ProvisionalValuesPresenter.new(assertion),
        errors: assertion.errors.to_h
      }
    )
  end
end
