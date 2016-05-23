class EvidenceItemIndexPresenter
  attr_reader :item

  def initialize(item)
    @item = item
  end

  def as_json(opts = {})
    {
        id: item.id,
        name: item.name,
        description: item.description,
        disease: DiseasePresenter.new(item.disease),
        citation: item.source.try(:description),
        source_url: source_url,
        pubmed_id: item.source.try(:pubmed_id),
        drugs: drugs,
        rating: item.rating,
        evidence_level: item.evidence_level,
        evidence_type: item.evidence_type,
        clinical_significance: item.clinical_significance,
        evidence_direction: item.evidence_direction,
        variant_hgvs: item.variant_hgvs,
        variant_origin: item.variant_origin,
        drug_interaction_type: item.drug_interaction_type,
        status: item.status,
        type: :evidence
    }
  end

  private
  def drugs
    item.drugs.map { |d| DrugPresenter.new(d) }
  end

  def source_url
    "http://www.ncbi.nlm.nih.gov/pubmed/#{item.source.try(:pubmed_id)}"
  end
end
