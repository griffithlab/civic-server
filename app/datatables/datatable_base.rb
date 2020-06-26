class DatatableBase

  attr_reader :view_context

  def initialize(view_context)
    @view_context = view_context
  end

  def as_json(options = {})
    {
      result: data,
      total: total_items
    }
  end

  private
  def params
    @params ||= view_context.params.permit!.to_h
  end

  def data
    ids = filter(order(paginate(select_query))).map {|o| o.id }
    objects = select_query.where(id: ids)
    objects.map { |o| presenter_class.new(o) }
  end

  def total_items
    @total_items ||= filter(count_query).all[0].count
  end

  def paginate(objects)
    objects.page(page).per(count)
  end

  def filter(objects)
    if params['filter']
      filter_params = params['filter'].reject{|name, value| special_filters.include? name}
    end
    if filter_params
      or_filters = []
      or_values = []
      filtered_objects = filter_params.inject(objects) do |o, (col, term)|
        if actual_col = filter_column(col)
          if params['operator'] == 'or'
            or_filters.append("#{actual_col} ILIKE ?")
            or_values.append("%#{term}%")
          else
            o.where("CAST(#{actual_col} AS TEXT) ILIKE :search", search: "%#{term}%")
          end
        else
          o
        end
      end
      if or_filters.length > 0
        filtered_objects = objects.where(or_filters.join(" OR "), *or_values)
      end
      filtered_objects
    else
      objects
    end
  end

  def extract_filter_term(term)
    if params['filter'] && (value = params['filter'][term]) && value.present?
      value
    else
      nil
    end
  end

  def order(objects)
    if sort_params = params['sorting']
      sort_priority = params['sort_priority'].blank? ? params['sorting'].keys.sort.join(',') : params['sort_priority']
      sort_priority.split(',').inject(objects) do |o, (col)|
        direction = params['sorting'][col]
        if actual_col = order_column(col)
          o.order("#{actual_col} #{sort_direction(direction)} NULLS LAST")
        else
          o
        end
      end
    else
      objects
    end
  end

  def page
    params[:page]
  end

  def count
    params[:count]
  end

  def sort_direction(dir)
    dir == 'desc' ? 'desc' : 'asc'
  end

  def filter_column(col)
    self.class::FILTER_COLUMN_MAP[col]
  end

  def order_column(col, col_hash = self.class::ORDER_COLUMN_MAP)
    col_hash[col]
  end

  def presenter_class
    raise 'Must implement in subclass'
  end

  def column_map(col)
    raise 'Must implement in subclass'
  end

  def initial_scope
    raise 'Must implement in subclass'
  end

  def select_query
    raise 'Must implement in subclass'
  end

  def count_query
    raise 'Must implement in subclass'
  end

  def special_filters
    raise 'Must implement in subclass'
  end
end
