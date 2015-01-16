module Importer
  class VariantSummariesAdaptor
    def valid_row?(row)
      !(row['variant'].blank? || row['entrez_gene'].blank?)
    end

    def create_entities_for_row(row)
      gene = Gene.find_by!(name: row['entrez_gene'])
      variant = EntityMaps::Variant.get_entity_from_row(row, gene: gene)
      variant.save
    end
  end
end
