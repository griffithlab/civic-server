module Importer
  module EntityMaps
    class VariantGroup < Base
      def self.tsv_to_entity_properties_map
        {
          'Variant Group' => [:name, default_multivalue_processor],
        }
      end

      def self.mapped_entity_class
        ::VariantGroup
      end

      def self.multivalue_columns
        [:name]
      end
    end
  end
end
