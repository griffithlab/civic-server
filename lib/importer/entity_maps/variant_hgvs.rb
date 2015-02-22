module Importer
  module EntityMaps
    class VariantHGVS < Base
      def self.tsv_to_entity_properties_map
        {
          'variant_hgvs' => [:origin, default_processor],
        }
      end

      def self.mapped_entity_class
        ::VariantHGVS
      end
    end
  end
end
