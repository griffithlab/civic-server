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
        drugs: drugs,
        rating: item.rating,
        evidence_level: item.evidence_level,
        evidence_type: item.evidence_type,
        clinical_significance: item.clinical_significance,
        evidence_direction: item.evidence_direction,
        variant_origin: item.variant_origin,
        drug_interaction_type: item.drug_interaction_type,
        status: item.status,
        open_change_count: item.open_changes.size,
        type: :evidence,
        source: SourcePresenter.new(item.source),
        variant_id: item.variant_id,
    }
  end

  private
  def drugs
    item.drugs.map { |d| DrugPresenter.new(d) }
  end
end
