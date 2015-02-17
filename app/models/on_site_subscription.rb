class OnSiteSubscription < Subscription
  def send_notification(content, url = nil)
    existing_unacknowledged_notification ||
      Notification.create(
        subscription: self,
        user: self.user,
        subscribable: self.subscribable,
        content: content,
        url: url
    )
  end

  def existing_unacknowledged_notification
    Notification.where(
      user: self.user,
      subscribable: self.subscribable,
      acknowledged: false
    ).first
  end
end
