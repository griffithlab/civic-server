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
        amp_level: assertion.amp_level,
        clinical_significance: assertion.clinical_significance,
        evidence_items: assertion.evidence_items.map { |ei| EvidenceItemIndexPresenter.new(ei) },
        acmg_codes: assertion.acmg_codes.map { |ac| AcmgCodeIndexPresenter.new(ac) },
        drugs: assertion.drugs.map { |d| DrugPresenter.new(d) },
        drug_interaction_type: assertion.drug_interaction_type,
        fda_regulatory_approval: assertion.fda_regulatory_approval,
        fda_companion_test: assertion.fda_companion_test,
      }
    )
  end
end
