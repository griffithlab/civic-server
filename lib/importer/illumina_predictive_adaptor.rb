module Importer
  class IlluminaPredictiveAdaptor
    @excluded_pubmed_ids = Set.new([
      '11595686',
      '20038723',
      '22370314',
      '10786679'
    ])

    def self.valid_row?(row)
      [
        row['genomeBuild'] == '37',
        row['variantclassification'].upcase.in?(['SINGLE POINT', 'INDEL', 'INSERTION', 'DELETION']),
        (row['aminoAcidChangeName'].present? && row['aminoAcidChangeName'] != 'NULL') || (row['beMarkerId'].present? && row['beMarkerId'] != 'NULL'),
        row['drDiseaseName'] != 'NULL',
        !@excluded_pubmed_ids.include?(row['drPubMed'])
      ].all?
    end

    def self.create_entities_for_row(row)
      variant = Importer::Illumina::VariantAdaptor.get_or_create_variant(row)
      Importer::Illumina::EvidenceItemAdaptor.get_or_create_evidence_items(variant, row) if variant
    end
  end
end
