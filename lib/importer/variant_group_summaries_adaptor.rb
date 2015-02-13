module Importer
  class VariantGroupSummariesAdaptor
    def valid_row?(row)
      !(row['Variant_Group'].blank?)
    end

    def create_entities_for_row(row)
      variant_group = EntityMaps::VariantGroup.get_entity_from_row(row)
      variant_group.save
    rescue ActiveRecord::RecordNotFound
      puts "Variant Group named #{row['Variant_Group']} not found!"
    end
  end
end
