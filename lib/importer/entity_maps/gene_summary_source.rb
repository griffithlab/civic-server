module Importer
  module EntityMaps
    class GeneSummarySource < Base
      def self.tsv_to_entity_properties_map
        {
          'Sources' => [:pubmed_id, default_multivalue_processor],
        }
      end

      def self.mapped_entity_class
        ::Source
      end

      def self.multivalue_columns
        [:pubmed_id]
      end
    end
  end
end
