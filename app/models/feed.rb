class Feed
  attr_reader :notifications, :user, :upto

  def self.unread_for_user(user)
    query = default_query(user).where(seen: false)
    Feed.new(query, user)
  end

  def self.for_user(user)
    Feed.new(default_query(user), user)
  end

  private
  def self.default_query(user)
    Notification
      .where(notified_user: user)
      .order('created_at DESC')
  end

  def initialize(notifications, user)
    timestamp = Time.now
    @user = user
    @upto = Time.now
    @notifications = notifications.where('created_at <= ?', timestamp)
  end
end
