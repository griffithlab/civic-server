class Feed
  attr_reader :notifications, :user, :upto

  def self.for_user(user, filters, category = :all, page = 1, per = 25)
    base_query = Notification.where(notified_user: user)
      .eager_load(event: [:originating_user])
      .order('notifications.created_at DESC')
      .page(page)
      .per(per)

    if category.to_s != 'all'
      base_query = base_query.where(type: Notification.types[category])
    end

    filtered_query = filter(base_query, filters)
    Feed.new(filtered_query, user)
  end

  private
  def self.filter(query, filters)
    filters.inject(query) do |q, (col, val)|
      binding.pry
      filter_column_map[col].call(q, val)
    end
  end

  def self.filter_column_map
    unless @filter_column_map
      @filter_column_map = Hash.new(->(q,v) {q})
      @filter_column_map['name'] = ->(q, v) { q.where(Constants::DISPLAY_NAME_QUERY, query: "%#{v}%") }
      @filter_column_map['age']  = ->(q, v) { q.where('notifications.created_at >= :query', Constants::TIMESPAN_MAP[v]) }
    end
    @filter_column_map
  end

  def initialize(notifications, user, timestamp = nil)
    @user = user
    if timestamp.nil?
      timestamp = Time.now
      @notifications = notifications.where('notifications.created_at <= ?', timestamp)
    else
      @notifications = notifications
    end
    @upto = timestamp
  end
end
