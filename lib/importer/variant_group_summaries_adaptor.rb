module Importer
  class VariantGroupSummariesAdaptor
    def valid_row?(row)
      !(row['Variant_Group'].blank?)
    end

    def create_entities_for_row(row)
      variant_group = VariantGroup.find_by!(name: row['Variant_Group'])
      variant_group.description = row['Summary']
      variant_group.save
    rescue ActiveRecord::RecordNotFound
      puts "Variant Group named #{row['Variant_Group']} not found!"
    end
  end
end
