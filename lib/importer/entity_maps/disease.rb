module Importer
  module EntityMaps
    class Disease < Base
      def self.tsv_to_entity_properties_map
        {
          'disease_ontology_id' => [:doid, default_processor],
        }
      end

      def self.mapped_entity_class
        ::Disease
      end
    end
  end
end
