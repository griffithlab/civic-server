class EvidenceItemBrowseRowPresenter
  def initialize(evidence_item)
    @evidence_item = evidence_item
  end

  def as_json
    {
      evidence_item_id: @evidence_item.id,
      gene: @evidence_item.gene_name,
      disease: @evidence_item.disease_name,
      variant: @evidence_item.variant_name,
      pubmed_id: @evidence_item.pubmed_id,
    }
  end
end
