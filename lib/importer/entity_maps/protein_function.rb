module Importer
  module EntityMaps
    class ProteinFunction < Base
      def self.tsv_to_entity_properties_map
        {
          'protein_function' => [:name, default_processor],
        }
      end

      def self.mapped_entity_class
        ::ProteinFunction
      end
    end
  end
end
