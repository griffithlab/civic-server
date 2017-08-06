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
    }
  end
end
