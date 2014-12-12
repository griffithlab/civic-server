module Importer
  class GeneVariantAdaptor
    def valid_row?(row)
      row['entrez_id']
    end

    def create_entities_for_row(row)
      gene = EntityMaps::Gene.get_entity_from_row(row)
      gene.save
      make_variant(gene, row)
    end

    private
    def make_variant(gene, row)
      variant = EntityMaps::Variant.get_entity_from_row(row)
      variant.gene = gene
      variant.save
    end
  end
end

#where do these go?
#mutation_biology	type_citation	treatments
