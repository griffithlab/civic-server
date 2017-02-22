module NotificationAdaptors
  class SubscribedEventPresenter < Base
    def as_json(opts = {})
      {
        id: notification.id,
        created_at: notification.created_at,
        seen: notification.seen,
        event: EventPresenter.new(notification.event),
        subscription: SubscriptionPresenter.new(notification.subscription)
      }
    end
  end
end
