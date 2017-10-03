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
      gene: assertion.gene.name,
      variant: assertion.variant.name,
      disease: DiseasePresenter.new(assertion.disease),
      nccn_guideline: assertion.nccn_guideline,
      nccn_guideline_version: assertion.nccn_guideline_version,
      evidence_type: assertion.evidence_type,
      amp_level: assertion.amp_level,
      clinical_significance: assertion.clinical_significance,
      acmg_level: assertion.acmg_level,
      evidence_item_count: assertion.evidence_items.count,
      regulatory_agency_approval: assertion.regulatory_agencies.map { |ra| RegulatoryAgencyIndexPresenter.new(ra) }
    }
  end
end
