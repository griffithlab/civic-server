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
      gene: {name: assertion.gene.name, id: assertion.gene.id},
      variant: {name: assertion.variant.name, id: assertion.variant.id},
      disease: DiseasePresenter.new(assertion.disease),
      drugs: assertion.drugs.map { |d| DrugPresenter.new(d) },
      evidence_type: assertion.evidence_type,
      evidence_direction: assertion.evidence_direction,
      clinical_significance: assertion.clinical_significance,
      evidence_item_count: assertion.evidence_items.size,
      fda_regulatory_approval: assertion.fda_regulatory_approval,
      status: assertion.status,
      open_change_count: assertion.open_changes.size,
      pending_evidence_count: assertion.pending_evidence.size,
    }
  end
end
