module Importer
  module EntityMaps
    class Drug < Base
      def self.tsv_to_entity_properties_map
        {
          'Drug' => [:name, default_processor],
          'pubchem_id' => [:pubchem_id, default_processor],
        }
      end

      def self.mapped_entity_class
        ::Drug
      end
    end
  end
end
