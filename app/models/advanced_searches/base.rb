module AdvancedSearches
  module Base
    attr_reader :params
    attr_reader :presentation_class

    def search
      query_segments = []
      param_values = []
      params["queries"].each do |query_params|
        handler = handler_for_field(query_params["field"])
        (additional_query_segments, additional_param_values) = handler.call(query_params["condition"]["name"], query_params["condition"]["parameters"])
        query_segments.push(*additional_query_segments)
        param_values.push(*additional_param_values)
      end
      model_class.advanced_search_scope.where(query_segments.join(boolean_operator), *param_values)
    end

    def default_handler(column, operation_type, parameters)
      columns = Array(column).map { |col| comparison(operation_type, col) }
      param_values = Array(parameters).map { |param| modified_param_for_operation_type(operation_type, param) }
      [
        ["(#{columns.join(' OR ')})"],
        param_values * columns.size
      ]
    end

    #certain enums, like EvidenceLevel, are stored backwards from their values
    #ie "A" should be "greater than" "D"
    def reverse_operation_type(operation_type)
      @reverse_order_operations ||= {
        'is' => 'is',
        'is_equal_to' => 'is_equal_to',
        'is_above' => 'is_below',
        'is_below' => 'is_above'
      }
      @reverse_order_operations[operation_type]
    end

    def boolean_operator
      params['operator'].upcase == 'OR' ? ' OR ' : ' AND '
    end

    def comparison(operation_type, column)
      @comparison_fragments ||= {
        'is' => '%s ILIKE ?',
        'is_not' => '%s NOT ILIKE ?',
        'is_above' => '%s > ?',
        'is_below' => '%s < ?',
        'is_equal_to' => '%s = ?',
        'is_not_equal_to' => '%s != ?',
        'contains' => '%s ILIKE ?',
        'is_less_than' => '%s < ?',
        'is_greater_than' => '%s > ?',
        'is_greater_than_or_equal_to' => '%s >= ?',
        'is_less_than_or_equal_to' => '%s <= ?',
        'begins_with' => '%s ILIKE ?',
        'does_not_contain' => '%s NOT ILIKE ?',
        'is_in_the_range' => '%1$s >= ? AND %1$s <= ?',
        'is_empty' => "TRIM(%1$s) = '' OR %1$s IS NULL"
      }
      sprintf(@comparison_fragments[operation_type], column)
    end

    def modified_param_for_operation_type(operation_type, param)
      fragment = case operation_type
      when 'contains' || 'does_not_contain'
        '%%%s%'
      when 'begins_with'
        '%s%'
      else
        '%s'
      end
      sprintf(fragment, param)
    end
  end
end
