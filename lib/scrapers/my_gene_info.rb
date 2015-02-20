require 'net/http'
require 'uri'

module Scrapers
  class MyGeneInfo
    def self.populate_gene_metadata(gene)
      resp = Util.make_get_request(url_from_gene_symbol(gene.name))
      data = JSON.parse(resp)
      fill_gene_fields(gene, data)
    end

    private
    def self.url_from_gene_symbol(gene_symbol)
      "http://mygene.info/v2/query/?q=#{gene_symbol}&species=human&entrezonly=1&limit=1"
    end

    def self.fill_gene_fields(gene, data)
      gene.tap do |g|
        g.entrez_id = extract_entrez_id(data)
        g.official_name = extract_official_name(data)
      end
    end

    def self.extract_entrez_id(data)
      data['hits'].first['entrezgene']
    end

    def self.extract_official_name(data)
      data['hits'].first['name']
    end
  end
end
