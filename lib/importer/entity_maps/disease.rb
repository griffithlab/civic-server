module Importer
  module EntityMaps
    class Disease < Base
      def self.tsv_to_entity_properties_map
        {
          'Disease' => [:name, default_processor],
          'DOID' => [:doid, default_processor]
        }
      end

      def self.mapped_entity_class
        ::Disease
      end
    end
  end
end
