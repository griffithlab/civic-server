class Feed
  attr_reader :query

  def self.for_user(user, notification_types = :all)
    if notification_types == :all
      Notification
        .where(notified_user: user)
        .order('created_at DESC')
    else
      Notification
        .where(notified_user: user, type: notification_types)
        .order('created_at DESC')
    end
  end

  private
  def initialize(query)
    @query = query
  end
end
