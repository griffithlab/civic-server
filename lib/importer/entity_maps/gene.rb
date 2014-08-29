module Importer
  module EntityMaps
    class Gene < Base
      def self.tsv_to_entity_properties_map
        {
          'entrez_gene' => [:name, default_processor_with_upcase],
          'entrez_id' => [:entrez_id, default_processor],
          'official name' => [:official_name, default_processor],
          'Summary' => [:description, default_processor]
        }
      end

      def self.mapped_entity_class
        ::Gene
      end
    end
  end
end
