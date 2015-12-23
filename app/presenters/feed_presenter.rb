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
    Hash.new { |h, k| h[k] = [] }.tap do |h|
      feed.notifications.each do |n|
        h[n.type.pluralize] << self.class.adaptor_for_notification(n).new(n)
      end
    end
  end

  def self.adaptor_for_notification(n)
    @presenters_hash ||= Notification.types.keys.each_with_object({}) do |type, h|
      h[type] = "NotificationAdaptors::#{type.classify}Presenter".constantize
    end
    @presenters_hash[n.type]
  end
end
