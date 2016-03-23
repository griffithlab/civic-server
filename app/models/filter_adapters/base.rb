module FilterAdapters
  class Base
    def self.filter_query(query, params)
      filter_mapping.inject(query) do |q, (param_name, query_parts)|
        if (param_value = params[param_name]).present?
          q.where(query_parts[:condition], query_parts[:value].call(param_value))
        else
          q
        end
      end
    end

    def self.filterable_fields(params)
      params.slice(*filter_mapping.keys)
    end

    def self.filter_mapping
      raise StandardError.new('Must implement in subclass!')
    end
  end
end
