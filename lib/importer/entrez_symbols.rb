module Importer
  class EntrezSymbols
    def self.run(file_path)
      ActiveRecord::Base.transaction do
        Gene.auditing_enabled = false
        file = File.new(file_path, 'r')
        file.each_line do |row|
          begin
            (entrez_id, symbol) = row.split("\t").map(&:strip)[1..2]
            next unless entrez_id.present? && symbol.present?
            unless Gene.find_by(name: symbol, entrez_id: entrez_id)
              gene = Gene.new(name: symbol, entrez_id: entrez_id, description: '')
              Scrapers::MyGeneInfo.populate_gene_metadata(gene).save
            end
          rescue => e
            next
          end
        end
      end
    end
  end
end