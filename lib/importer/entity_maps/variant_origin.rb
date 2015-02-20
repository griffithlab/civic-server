module Importer
  module EntityMaps
    class VariantOrigin < Base
      def self.tsv_to_entity_properties_map
        {
          'variant_origin' => [:origin, default_processor_with_first_letter_caps],
        }
      end

      def self.mapped_entity_class
        ::VariantOrigin
      end
    end
  end
end
