module Importer
  class VariantSummariesAdaptor
    def valid_row?(row)
      !(row['variant'].blank? || row['entrez_gene'].blank?)
    end

    def create_entities_for_row(row)
      gene = Gene.find_by!(name: row['entrez_gene'].strip)
      variant = EntityMaps::Variant.get_entity_from_row(row, gene: gene)
      variant.save
    rescue ActiveRecord::RecordNotFound
      puts "Gene named #{row['entrez_gene']} not found!"
    end
  end
end
