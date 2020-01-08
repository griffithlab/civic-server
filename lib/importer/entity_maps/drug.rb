module Importer
  module EntityMaps
    class Drug < Base
      def self.tsv_to_entity_properties_map
        {
          'Drug' => [:name, default_multivalue_processor_with_first_letter_caps],
        }
      end

      def self.mapped_entity_class
        ::Drug
      end

      def self.multivalue_columns
        [:name]
      end
    end
  end
end
