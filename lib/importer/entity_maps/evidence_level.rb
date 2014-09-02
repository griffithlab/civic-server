module Importer
  module EntityMaps
    class EvidenceLevel < Base
      def self.tsv_to_entity_properties_map
        {
          'Level' => [:level, default_processor],
        }
      end

      def self.mapped_entity_class
        ::EvidenceLevel
      end
    end
  end
end
