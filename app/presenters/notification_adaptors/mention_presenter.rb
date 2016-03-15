module NotificationAdaptors
  class MentionPresenter < Base
    def as_json(opts = {})
      {
        id: notification.id,
        created_at: notification.created_at,
        state_params: notification.event.state_params,
        seen: notification.seen,
        originating_user: UserPresenter.new(notification.originating_user),
      }
    end
  end
end
