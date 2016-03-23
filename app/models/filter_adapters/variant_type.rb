module FilterAdapters
  class VariantType < Base
    def self.filter_mapping
      @filter_mapping ||= {
        name: {
          condition: 'variant_types.display_name ILIKE ?',
          value: ->(val) { "#{val}%" }
        }
      }
    end
  end
end
