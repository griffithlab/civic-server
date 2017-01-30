module Importer
  class EntrezSymbols
    attr_reader :file_path
    def initialize(file_path)
      @file_path = file_path
    end

    def import
      Gene.auditing_enabled = false
      import_symbols
      Gene.auditing_enabled = true
    end

    private
    def import_symbols
      ActiveRecord::Base.transaction do
        File.open(file_path, 'r') do |file|
          reader = Zlib::GzipReader.new(file, encoding: "iso-8859-1:UTF-8")
          CSV.new(reader, col_sep: "\t", headers: true).each do |line|
            next unless valid_line?(line)
            process_line(line)
          end
          reader.close
        end
      end
    end

    def valid_line?(line)
      line['GeneID'].present? &&
        line['Symbol_from_nomenclature_authority'].present? &&
        line['Symbol_from_nomenclature_authority'].strip != '-' &&
        line['#tax_id'] == '9606'
    end

    def process_line(line)
      gene = Gene.where(entrez_id: line['GeneID']).first_or_initialize
      gene.name = line['Symbol_from_nomenclature_authority']
      gene.official_name = line['description']
      if line['Synonyms'].present?
        synonyms = line['Synonyms'].split('|').map do |synonym|
          if synonym.strip == '-'
            nil
          else
            GeneAlias.where(name: synonym).first_or_create
          end
        end.compact
        synonyms << GeneAlias.where(name: line['Symbol']).first_or_create
        gene.gene_aliases = synonyms.uniq
      end
      if gene.description.blank?
        gene.description = ''
      end
      gene.save
    end
  end
end
