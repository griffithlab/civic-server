class AssertionDetailPresenter < AssertionIndexPresenter
  def as_json(opts = {})
    super.merge(
      {
        evidence_items: assertion.evidence_items.map { |ei| EvidenceItemIndexPresenter.new(ei) },
        acmg_codes: assertion.acmg_codes.map { |ac| AcmgCodeIndexPresenter.new(ac) },
        drugs: assertion.drugs.map { |d| DrugIndexPresenter.new(d) },
        drug_interaction_type: assertion.drug_interaction_type,
        fda_regulatory_approval: assertion.fda_regulatory_approval,
        fda_companion_test: assertion.fda_companion_test,
      }
    )
  end
end
