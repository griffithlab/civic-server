module Importer
  module EntityMaps
    class Category < Base
      def self.tsv_to_entity_properties_map
        {
          'gene_category' => [:name, default_processor],
        }
      end

      def self.mapped_entity_class
        ::Category
      end
    end
  end
end
