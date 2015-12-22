class Feed
  attr_reader :notifications, :user, :upto

  def self.unread_for_user(user)
    timestamp = Time.now
    query = Notification
        .where(notified_user: user)
        .where(seen: false)
        .where('created_at <= ?', timestamp)
        .order('created_at DESC')
    Feed.new(query, user, timestamp)
  end

  private
  def initialize(notifications, user, upto)
    @notifications = notifications
    @user = user
    @upto = upto
  end
end
