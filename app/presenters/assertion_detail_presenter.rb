class AssertionDetailPresenter < AssertionIndexPresenter
  def as_json(opts = {})
    super.merge(
      {
        evidence_items: assertion.evidence_items.map { |ei| EvidenceItemIndexPresenter.new(ei) },
        acmg_codes: assertion.acmg_codes.map { |ac| AcmgCodeIndexPresenter.new(ac) },
        regulatory_agency_approval: assertion.regulatory_agencies.map { |ra| RegulatoryAgencyIndexPresenter.new(ra) },
        fda_companion_test: assertion.fda_companion_test
      }
    )
  end
end
