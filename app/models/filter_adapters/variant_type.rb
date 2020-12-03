module FilterAdapters
  class VariantType < Base
    def self.filter_mapping
      @filter_mapping ||= {
        name: {
          condition: 'variant_types.display_name ILIKE ?',
          value: ->(val) { "%#{val}%" },
          order: ->(val) { safe_val = ActiveRecord::Base.connection.quote("#{val}%"); Arel.sql("CASE WHEN variant_types.display_name ILIKE #{safe_val} THEN 0 ELSE 1 END ASC, variant_types.display_name ASC") }
        }
      }
    end
  end
end
