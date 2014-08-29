module Importer
  module EntityMaps
    class CategoryGene < Base
      def self.tsv_to_entity_properties_map
        {
          'gene_category_citation' => [:citation, default_processor],
        }
      end

      def self.mapped_entity_class
        ::CategoryGene
      end
    end
  end
end
