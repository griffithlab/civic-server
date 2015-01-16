module Importer
  module EntityMaps
    class EvidenceItem < Base
      def self.tsv_to_entity_properties_map
        {
          'Text' => [:explanation, default_processor],
          'Statement' => [:text, default_processor],
          'Evidence Direction' => [:clinical_direction, default_processor],
          'Clinical Significance' => [:outcome, default_processor],
          'stars' => [:rating, ->(x) { x.strip.to_i }]

        }
      end

      def self.mapped_entity_class
        ::EvidenceItem
      end
    end
  end
end
