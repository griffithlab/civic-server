class AssertionIndexPresenter
  attr_reader :assertion

  def initialize(assertion)
    @assertion = assertion
  end

  def as_json(opts = {})
    {
      id: assertion.id,
      type: :assertion,
      name: assertion.name,
      summary: assertion.summary,
      description: assertion.description,
      evidence_item_count: assertion.evidence_items.size,
      fda_regulatory_approval: assertion.fda_regulatory_approval,
      status: assertion.status,
      open_change_count: assertion.open_changes.size,
      pending_evidence_count: assertion.pending_evidence.size,
    }
  end
end
