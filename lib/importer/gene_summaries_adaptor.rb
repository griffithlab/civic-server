module Importer
  class GeneSummariesAdaptor
    def valid_row?(row)
      !row['entrez_gene'].blank?
    end

    def create_entities_for_row(row)
      gene = EntityMaps::Gene.get_entity_from_row(row)
      sources = EntityMaps::GeneSummarySource.get_entity_from_row(row)
      sources.each do |s|
        gene.sources << s
      end
      Scrapers::MyGeneInfo.populate_gene_metadata(gene).save
    end
  end
end
