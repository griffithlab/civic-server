module Importer
  module EntityMaps
    class EvidenceItem < Base
      def self.tsv_to_entity_properties_map
        {
          'Statement' => [:description, default_processor],
          'Evidence Direction' => [:evidence_direction, default_processor],
          'Clinical Significance' => [:clinical_significance, default_processor],
          'stars' => [:rating, ->(x) { x.strip.to_i }],
          'variant_hgvs' => [:variant_hgvs, default_processor],
          'variant_origin' => [:variant_origin, default_processor],
          'Level' => [:evidence_level, default_processor],
          'Evidence Type' => [:evidence_type, default_processor],
        }
      end

      def self.mapped_entity_class
        ::EvidenceItem
      end
    end
  end
end
