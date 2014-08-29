module Importer
  module EntityMaps
    class GenePathway < Base
      def self.tsv_to_entity_properties_map
        {
          'pathway_citation' => [:citation, default_processor],
        }
      end

      def self.mapped_entity_class
        ::GenePathway
      end
    end
  end
end
