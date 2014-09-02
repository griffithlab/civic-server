module Importer
  module EntityMaps
    class EvidenceItem < Base
      def self.tsv_to_entity_properties_map
        {
          'Explanation' => [:explanation, default_processor],
          'Text' => [:text, default_processor],
          'Direction for Clinical Actionability' => [:clinical_direction, default_processor],
          'Evidence Outcome' => [:outcome, default_processor],
        }
      end

      def self.mapped_entity_class
        ::EvidenceItem
      end
    end
  end
end
