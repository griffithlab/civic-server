class EvidenceItemDetailPresenter < EvidenceItemIndexPresenter

  def as_json(opts = {})
    super.merge({
      errors: item.errors.to_hash,
      lifecycle_actions: LifecyclePresenter.new(item),
      fields_with_pending_changes: item.fields_with_pending_changes
    })
  end
end
