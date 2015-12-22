class OnSiteSubscription < Subscription
  def send_notification(event)
    Notification.where(
      type: :subscribed_event,
      originating_user: event.originating_user,
      notified_user: self.user,
      event: event,
      seen: false
    ).first_or_create
  end
end
