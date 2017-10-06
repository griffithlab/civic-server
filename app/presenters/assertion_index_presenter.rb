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
      gene: {name: assertion.gene.name, id: assertion.gene.id},
      variant: {name: assertion.variant.name, id: assertion.variant.id},
      disease: DiseasePresenter.new(assertion.disease),
      nccn_guideline: assertion.nccn_guideline,
      nccn_guideline_version: assertion.nccn_guideline_version,
      evidence_type: assertion.evidence_type,
      amp_level: assertion.amp_level,
      clinical_significance: assertion.clinical_significance,
      evidence_item_count: assertion.evidence_items.size,
    }
  end
end
