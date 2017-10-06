class AssertionIndexPresenter
  attr_reader :assertion

  def initialize(assertion)
    @assertion = assertion
  end

  def as_json(opts = {})
    {
      id: assertion.id,
      name: assertion.name,
      description: assertion.description,
      evidence_item_count: assertion.evidence_items.size,
    }
  end
end
