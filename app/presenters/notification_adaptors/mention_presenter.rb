module NotificationAdaptors
  class MentionPresenter < Base
    def as_json(opts = {})
      {
        id: notification.id,
        created_at: notification.created_at,
        seen: notification.seen,
        event: EventPresenter.new(notification.event),
        originating_user: UserPresenter.new(notification.originating_user),
      }
    end
  end
end
