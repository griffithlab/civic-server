module Importer
  module EntityMaps
    class Source < Base
      def self.tsv_to_entity_properties_map
        {
          'Source' => [:pubmed_id, default_processor],
          'Type of study' => [:study_type, default_processor],
        }
      end

      def self.mapped_entity_class
        ::Source
      end
    end
  end
end
