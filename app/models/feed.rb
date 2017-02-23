class Feed
  attr_reader :notifications, :user, :upto

  def self.for_user(user, filters, category = :all, page = 1, per = 25)
    base_query = Notification.where(notified_user: user)
      .eager_load(:subscription,event: [:originating_user])
      .order('notifications.created_at DESC')
      .page(page)
      .per(per)

    if category.to_s != 'all'
      base_query = base_query.where(type: Notification.types[category.singularize])
    end

    filtered_query = filter(base_query, filters)
    Feed.new(filtered_query, user)
  end

  private
  def self.filter(query, filters)
    Array(filters).inject(query) do |q, (col, val)|
      filter_column_map[col].call(q, val)
    end
  end

  def self.filter_column_map
    unless @filter_column_map
      @filter_column_map = Hash.new(->(q,v) {q})
      @filter_column_map['name'] = ->(q, v) { q.where(Constants::DISPLAY_NAME_QUERY, query: "%#{v}%") }
      @filter_column_map['limit']  = ->(q, v) { q.where('notifications.created_at >= :query', query: Constants::TIMESPAN_MAP[v]) }
      @filter_column_map['show_read']  = ->(q, v) {
        if v == 'true'
          q
        else
          q.where('notifications.seen' => false)
        end
      }
      @filter_column_map['show_unlinkable']  = ->(q, v) {
        if v == 'true'
          q
        else
          q.where('events.unlinkable' => false)
        end
      }
    end
    @filter_column_map
  end

  def initialize(notifications, user)
    @user = user
    @notifications = notifications
    @upto = Time.now
  end
end
