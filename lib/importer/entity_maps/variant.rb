module Importer
  module EntityMaps
    class Variant < Base
      def self.tsv_to_entity_properties_map
        {
          'variant' => [:name, default_processor_with_upcase],
          'variant_summary' => [:description, default_processor],
        }
      end

      def self.mapped_entity_class
        ::Variant
      end
    end
  end
end
