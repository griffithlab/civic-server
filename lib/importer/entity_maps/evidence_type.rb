module Importer
  module EntityMaps
    class EvidenceType < Base
      def self.tsv_to_entity_properties_map
        {
          'Evidence Type' => [:evidence_type, default_processor],
        }
      end

      def self.mapped_entity_class
        ::EvidenceType
      end
    end
  end
end
