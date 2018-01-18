class OrganizationBrowseTable < DatatableBase
  ORDER_COLUMN_MAP = {
    'most_active' => 'action_count',
    'recent_activity' => 'most_recent_action_timestamp',
    'member_count' => 'member_count',
  }

  FILTER_COLUMN_MAP = {
    'name' => 'organizations.name'
  }

  LIMIT_COLUMN_MAP = {
    'most_active' => [:where, 'events.created_at'],
    'recent_activity' => [:having, "coalesce(MAX(events.created_at), DATE '0001-01-02')"],
  }

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
    CommunityOrganizationPresenter
  end

  def initial_scope
    Organization.datatable_scope
  end

  def select_query
    initial_scope.select('organizations.*, MAX(events.created_at) as most_recent_action_timestamp, coalesce(COUNT(DISTINCT(events.id)), 0) as action_count, coalesce(COUNT(DISTINCT(users.id)), 0) as member_count')
      .group(Organization.column_names.map {|c| "#{Organization.table_name}.#{c}"})
  end

  def count_query
    initial_scope.select('COUNT(DISTINCT(organizations.id)) as count')
  end

  private
  def time_from_term(term)
    Constants::TIMESPAN_MAP[term]
  end
end
