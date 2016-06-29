class UserBrowseTable < DatatableBase
  ORDER_COLUMN_MAP = {
    'last_seen' => 'users.last_seen_at',
    'recent_activity' => 'most_recent_action_timestamp',
    'join_date' => 'users.created_at',
    'most_active' => 'action_count'
  }

  LIMIT_COLUMN_MAP = {
    'most_active' => [:where, 'events.created_at'],
    'recent_activity' => [:having, "coalesce(MAX(events.created_at), DATE '0001-01-02')"],
    'last_seen' => [:where, 'users.last_seen_at'],
    'join_date' => [:where, 'users.created_at']
  }

  def filter(objects)
    filtered_query = objects.dup
    if display_name = extract_filter_term('display_name')
      filtered_query = filtered_query.where(Constants::DISPLAY_NAME_QUERY, query: "%#{display_name}%")
    end
    if area_of_expertise = extract_filter_term('area_of_expertise')
      filtered_query = filtered_query.where('users.area_of_expertise = :query', query: User.area_of_expertises[area_of_expertise])
    end
    if role = extract_filter_term('role')
      filtered_query = filtered_query.where('users.role = :query', query: User.roles[role.downcase.singularize])
    end
    filtered_query
  end

  def extract_filter_term(term)
    if params['filter'] && (value = params['filter'][term]) && value.present?
      value
    else
      nil
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
        if (timestamp = time_from_term(term)) && (operation_and_column = order_column(col, LIMIT_COLUMN_MAP))
          (operation, actual_col) = operation_and_column
          o.send(operation, "#{actual_col} >= ?", timestamp)
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
    initial_scope.select('users.*, MAX(events.created_at) as most_recent_action_timestamp, coalesce(COUNT(DISTINCT(events.id)), 0) as action_count')
      .group(User.column_names.map {|c| "#{User.table_name}.#{c}"})
  end

  def count_query
    initial_scope.select('COUNT(DISTINCT(users.id)) as count')
  end

  private
  def time_from_term(term)
    Constants::TIMESPAN_MAP[term]
  end
end