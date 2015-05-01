class OnSiteSubscription < Subscription
  def send_notification(event)
    Feed.create(
      user: self.user,
      event: event,
      acknowledged: false
    )
  end
end
