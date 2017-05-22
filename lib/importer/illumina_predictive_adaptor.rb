module Importer
  class IlluminaPredictiveAdaptor

    def self.valid_row?(row)
      [
        row['genomeBuild'] == '37',
        row['variantclassification'].upcase.in?(['SINGLE POINT', 'INDEL', 'INSERTION', 'DELETION']),
        (row['aminoAcidChangeName'].present? && row['aminoAcidChangeName'] != 'NULL') || (row['beMarkerId'].present? && row['beMarkerId'] != 'NULL'),
        row['drDiseaseName'] != 'NULL'
      ].all?
    end

    def self.create_entities_for_row(row)
      variant = Importer::Illumina::VariantAdaptor.get_or_create_variant(row)
      Importer::Illumina::EvidenceItemAdaptor.get_or_create_evidence_items(variant, row)
    end
  end
end
