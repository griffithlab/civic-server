require 'net/http'
require 'uri'

module Scrapers
  class MyGeneInfo
    def self.get_entrez_id_from_gene_symbol(gene_symbol)
      url = url_for_entrez_id_from_gene_symbol(gene_symbol)
      req = Net::HTTP::Get.new(url.request_uri)
      res = Net::HTTP.start(url.host, url.port) { |http| http.request(req) }
      raise "Failed for #{gene_symbol}" unless res.code == '200'
      extract_entrez_id(JSON.parse(res.body))
    end

    private
    def self.url_for_entrez_id_from_gene_symbol(gene_symbol)
      url_for_query("q=#{gene_symbol}&species=human&entrezonly=1&limit=1")
    end

    def self.url_for_query(params)
      URI.parse("http://mygene.info/v2/query/?#{params}")
    end

    def self.extract_entrez_id(data)
      data['hits'].first['entrezgene']
    end
  end
end
