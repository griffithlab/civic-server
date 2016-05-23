class FeedPresenter
  attr_reader :feed

  def initialize(feed)
    @feed = feed
  end

  def as_json(opts = {})
    {
      user: UserPresenter.new(feed.user),
      upto: feed.upto,
      notifications: notifications,
      total: feed.count
    }
  end

  private
  def notifications
    feed.notifications.map { |n| NotificationPresenter.new(n) }
  end
end
