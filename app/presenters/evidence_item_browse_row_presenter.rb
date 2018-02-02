class EvidenceItemBrowseRowPresenter
  def initialize(evidence_item)
    @evidence_item = evidence_item
  end

  def as_json
    {
      id: @evidence_item.id,
      description: @evidence_item.description,
      gene_name: @evidence_item.gene_name,
      gene_id: @evidence_item.gene_id,
      disease: @evidence_item.disease_name,
      drugs: @evidence_item.drug_names,
      variant_name: @evidence_item.variant_name,
      variant_id: @evidence_item.variant_id,
      evidence_level: @evidence_item.evidence_level,
      evidence_type: @evidence_item.evidence_type,
      evidence_direction: @evidence_item.evidence_direction,
      clinical_significance: @evidence_item.clinical_significance,
      variant_origin: @evidence_item.variant_origin,
      rating: @evidence_item.rating,
      source_title: @evidence_item.source_title,
      source_citation: @evidence_item.source_citation,
      status: @evidence_item.status,
      open_change_count: @evidence_item.open_changes.size,
    }
  end
end
