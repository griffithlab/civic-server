class AssertionDetailPresenter < AssertionIndexPresenter
  def as_json(opts = {})
    super.merge(
      {
        evidence_items: assertion.evidence_items.map { |ei| EvidenceItemIndexPresenter.new(ei) },
        acmg_codes: assertion.acmg_codes.map { |ac| AcmgCodeIndexPresenter.new(ac) }
      }
    )
  end
end
