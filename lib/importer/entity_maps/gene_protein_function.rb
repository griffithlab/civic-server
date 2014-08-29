module Importer
  module EntityMaps
    class GeneProteinFunction < Base
      def self.tsv_to_entity_properties_map
        {
          'function_citation' => [:citation, default_processor],
        }
      end

      def self.mapped_entity_class
        ::GeneProteinFunction
      end
    end
  end
end
