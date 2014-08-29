module Importer
  module EntityMaps
    class ProteinMotif < Base
      def self.tsv_to_entity_properties_map
        {
          'protein_motifs' => [:name, -> (x) { x.split(',').map(&:strip).map(&:titleize) }]
        }
      end

      def self.mapped_entity_class
        ::ProteinMotif
      end

      def self.multivalue_columns
        [:name]
      end
    end
  end
end
