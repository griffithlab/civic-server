class Feed
  attr_reader :notifications, :user, :upto

  def self.for_user(user, filters, page = 1, per = 25)
    base_query = Notification.where(notified_user: user)
      .order('created_at DESC')
      .page(page)
      .per(per)

    filtered_query = filter(base_query, filters)
    Feed.new(filtered_query, user)
  end

  private
  def self.filter(query, filters)
    if filters
      filters.inject(query) do |q, (col, val)|
        q.where(col => val)
      end
    else
      query
    end
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
