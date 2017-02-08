class SubscriptionPresenter
  attr_reader :sub
  def initialize(sub)
    @sub = sub
  end

  def as_json(opt = {})
    {
      id: sub.id,
      type: sub.type,
      created_at: sub.created_at,
      updated_at: sub.updated_at,
      subscribable: {
        type: sub.subscribable_type,
        id: sub.subscribable_id,
        name: sub.subscribable.subscribable_name
      }
    }
  end
end
