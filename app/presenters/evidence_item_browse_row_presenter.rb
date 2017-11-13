class EvidenceItemBrowseRowPresenter
  def initialize(evidence_item)
    @evidence_item = evidence_item
  end

  def as_json
    {
      id: @evidence_item.id,
      gene_name: @evidence_item.gene_name,
      gene_id: @evidence_item.gene_id,
      disease: @evidence_item.disease_name,
      variant_name: @evidence_item.variant_name,
      variant_id: @evidence_item.variant_id,
      source_title: @evidence_item.source_title,
      source_citation: @evidence_item.source_citation
    }
  end
end
