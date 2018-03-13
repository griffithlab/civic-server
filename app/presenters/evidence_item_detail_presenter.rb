class EvidenceItemDetailPresenter < EvidenceItemIndexPresenter

  def as_json(opts = {})
    super.merge({
      assertions: item.assertions.map{ |a| AssertionIndexPresenter.new(a) },
      errors: item.errors.to_hash,
      lifecycle_actions: LifecyclePresenter.new(item),
      fields_with_pending_changes: item.fields_with_pending_changes,
      gene_id: item.variant.gene_id
    })
  end
end
