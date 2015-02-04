module Importer
  class ClinicalActionEvidenceAdaptor
    def valid_row?(row)
      row['Include?'] == '1' && required_fields.inject(true) { |val, cur| val && !row[cur].blank? }
    end

    def create_entities_for_row(row)
      variant_name = row['variant'].upcase.strip
      entrez_id = row['entrez_id']

      variant = Variant.joins(:gene).find_by!(name: variant_name, 'genes.entrez_id' => entrez_id)

      disease = EntityMaps::Disease.get_entity_from_row(row)
      source = EntityMaps::Source.get_entity_from_row(row)
      drugs = EntityMaps::Drug.get_entity_from_row(row)

      evidence_type = EntityMaps::EvidenceType.get_entity_from_row(row)
      evidence_level = EntityMaps::EvidenceLevel.get_entity_from_row(row)

      drugs.each do |drug|
        EntityMaps::EvidenceItem.get_entity_from_row(
          row,
          variant: variant,
          disease: disease,
          source: source,
          drug: drug,
          evidence_type: evidence_type,
          evidence_level: evidence_level
        ).save
      end
      make_variant_groups(variant, row)
    rescue ActiveRecord::RecordNotFound
      puts "Variant named #{variant_name} for gene #{entrez_id} not found!"
    end

    private
    def required_fields
      [
        'entrez_gene',
        'variant',
        'DOID',
        'pubchem_id',
        'Source',
      ]
    end

    def make_variant_groups(variant, row)
      EntityMaps::VariantGroup.get_entity_from_row(row).each do |variant_group|
        variant.variant_groups << variant_group
      end
    end
  end
end
