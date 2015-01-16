require 'net/http'
require 'uri'

module Scrapers
  class MyGeneInfo
    def self.populate_gene_metadata(gene)
      url = url_for_gene(gene.name)
      req = Net::HTTP::Get.new(url.request_uri)
      res = Net::HTTP.start(url.host, url.port) { |http| http.request(req) }
      raise "Failed for #{gene_symbol}" unless res.code == '200'
      data = JSON.parse(res.body)
      fill_gene_fields(gene, data)
    end

    private
    def self.url_for_gene(gene_symbol)
      url_for_query("q=#{gene_symbol}&species=human&entrezonly=1&limit=1")
    end

    def self.url_for_query(params)
      URI.parse("http://mygene.info/v2/query/?#{params}")
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
