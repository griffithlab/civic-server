class AssertionIndexPresenter
  attr_reader :assertion

  def initialize(assertion)
    @assertion = assertion
  end

  def as_json(opts = {})
    {
      id: assertion.id,
      description: assertion.description,
      fda_approved: assertion.fda_approved,
      fda_approval_information: assertion.fda_approval_information,
      nccn_guideline: assertion.nccn_guideline,
      nccn_guideline_version: assertion.nccn_guideline_version,
      amp_level: assertion.amp_level,
      clinical_significance: assertion.clinical_significance,
      acmg_level: assertion.acmg_level,
      evidence_item_count: assertion.evidence_items.count,
    }
  end
end
