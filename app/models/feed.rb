class Feed
  attr_reader :notifications, :user, :upto

  def self.unread_for_user(user)
    query = default_query(user).where(seen: false)
    Feed.new(query, user)
  end

  def self.for_user(user)
    Feed.new(default_query(user), user)
  end

  def self.from_notifications(notifications, user)
    upto = notifications.map(&:created_at).max
    Feed.new(notifications, user, upto)
  end

  private
  def self.default_query(user)
    Notification
      .where(notified_user: user)
      .order('created_at DESC')
  end

  def initialize(notifications, user, timestamp = nil)
    @user = user
    if timestamp.nil?
      timestamp = Time.now
      @notifications = notifications.where('created_at <= ?', timestamp)
    else
      @notifications = notifications
    end
    @upto = timestamp
  end
end
