module Importer
  class ClinicalEvidenceAdaptor
    def valid_row?(row)
      variant = row['variant'] and row['variant'].strip
      variant && Variant.where(name: variant).any?  && row['Include?'] == '1' && !row['Disease ontology id'].blank?
    end

    #inital rating?
    #initial comment?
    #Comments
    #Curator stars
    #Include?
    def create_entities_for_row(row)
      variant = Variant.where(name: row['variant'].strip).first
      evidence_level = EntityMaps::EvidenceLevel.get_entity_from_row(row)
      evidence_type = EntityMaps::EvidenceType.get_entity_from_row(row)
      drug = EntityMaps::Drug.get_entity_from_row(row)
      disease = EntityMaps::Disease.get_entity_from_row(row)
      source = EntityMaps::Source.get_entity_from_row(row)
      evidence_item = EntityMaps::EvidenceItem.get_entity_from_row(
        row,
        variant: variant,
        evidence_level: evidence_level,
        evidence_type: evidence_type,
        drug: drug,
        disease: disease,
        source: source
      )
      evidence_item.save
    end
  end
end
