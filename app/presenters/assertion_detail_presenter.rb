class AssertionDetailPresenter < AssertionIndexPresenter
  def as_json(opts = {})
    super.merge(
      {
        nccn_guideline: assertion.nccn_guideline.name,
        nccn_guideline_version: assertion.nccn_guideline_version,
        amp_level: assertion.amp_level,
        evidence_items: assertion.evidence_items.map { |ei| EvidenceItemWithStateParamsPresenter.new(ei) },
        acmg_codes: assertion.acmg_codes.map { |ac| AcmgCodeIndexPresenter.new(ac) },
        drug_interaction_type: assertion.drug_interaction_type,
        fda_companion_test: assertion.fda_companion_test,
        allele_registry_id: assertion.variant.allele_registry_id,
        phenotypes: assertion.phenotypes.map { |p| PhenotypePresenter.new(p) },
        variant_origin: assertion.variant_origin,
        lifecycle_actions: LifecyclePresenter.new(assertion),
        provisional_values: ProvisionalValuesPresenter.new(assertion),
        errors: assertion.errors.to_h
      }
    )
  end
end
