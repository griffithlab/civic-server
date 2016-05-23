class EvidenceItemDetailPresenter < EvidenceItemIndexPresenter

  def as_json(opts = {})
    super.merge({
      errors: item.errors.to_hash,
        lifecycle_actions: LifecyclePresenter.new(item)
    })
  end
end
