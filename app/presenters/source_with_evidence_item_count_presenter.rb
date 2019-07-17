class SourceWithEvidenceItemCountPresenter < SourceDetailPresenter
  def as_json(opts = {})
    super.merge(
      {
        evidence_item_count: source.evidence_items.size,
      }
    )
  end
end
