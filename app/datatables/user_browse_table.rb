class UserBrowseTable < DatatableBase
  ORDER_COLUMN_MAP = {
    'last_seen' => 'users.last_seen_at',
    'recent_activity' => 'most_recent_action_timestamp',
    'join_date' => 'users.created_at',
    'most_active' => 'action_count'
  }

  LIMIT_COLUMN_MAP = ORDER_COLUMN_MAP.merge({'most_active' => 'events.created_at'})

  TIMESPAN_MAP = {
    'today' => Date.today.to_time,
    'this_week' => 1.week.ago,
    'this_month' => 1.month.ago,
    'this_year' => 1.year.ago,
    'all_time' => 99.years.ago
  }

  def filter(objects)
    if params['filter'] && (display_name = params['filter']['display_name']) && display_name.present?
      objects.where('users.username ILIKE :search OR users.email ILIKE :search OR users.name ILIKE :search', search: "%#{display_name}%")
    else
      objects
    end
  end

  def objects
    @limited_objects ||= limit(super)
  end

  def total_items
    @total_items ||= limit(filter(count_query)).all[0].count
  end

  def limit(objects)
    if limit_params = params['limit']
      limit_params.inject(objects) do |o, (col, term)|
        if (timestamp = time_from_term(term)) && (actual_col = order_column(col, LIMIT_COLUMN_MAP))
          o.where("#{actual_col} >= ?", timestamp)
        else
          o
        end
      end
    else
      objects
    end
  end

  def presenter_class
    CommunityUserPresenter
  end

  def initial_scope
    User.datatable_scope
  end

  def select_query
    initial_scope.select('users.*, MAX(events.created_at) as most_recent_action_timestamp, COUNT(DISTINCT(events.id)) as action_count')
      .group(User.column_names.map {|c| "#{User.table_name}.#{c}"})
  end

  def count_query
    initial_scope.select('COUNT(DISTINCT(users.id)) as count')
  end

  private
  def time_from_term(term)
    self.class::TIMESPAN_MAP[term]
  end
end