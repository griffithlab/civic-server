require 'net/http'
require 'uri'

module Scrapers
  class MyGeneInfo
    def self.populate_gene_metadata(gene)
      resp = Util.make_get_request(url_from_gene_symbol(gene.name))
      data = JSON.parse(resp)
      create_gene_aliases(gene, data)
      fill_gene_fields(gene, data)
    end

    private
    def self.url_from_gene_symbol(gene_symbol)
      "http://mygene.info/v2/query/?q=symbol:#{gene_symbol}&species=human&entrezonly=1&limit=1&fields=symbol,name,entrezgene,alias"
    end

    def self.fill_gene_fields(gene, data)
      gene.tap do |g|
        g.entrez_id = extract_entrez_id(data)
        g.official_name = extract_official_name(data)
      end
    end

    def self.create_gene_aliases(gene, data)
      Array(data['hits'].first['alias']).each do |alt_name|
        gene_alias = GeneAlias.where(name: alt_name).first_or_create
        gene.gene_aliases << gene_alias
      end
    end

    def self.extract_entrez_id(data)
      data['hits'].first['entrezgene']
    end

    def self.extract_official_name(data)
      data['hits'].first['name']
    end

    private
    def self.url_for_uniprot(gene_symbol)
      "http://mygene.info/v2/query/?q=symbol:#{gene_symbol}&species=human&entrezonly=1&limit=1&fields=uniprot"
    end

    def self.get_swissprot_name(gene)
      resp = Util.make_get_request(url_for_uniprot(gene.name))
      data = JSON.parse(resp)
      extract_swissprot_name(data)
    end

    def self.extract_swissprot_name(data)
      if data['hits'].first != nil and data['hits'].first['uniprot'] != nil
        data['hits'].first['uniprot']['Swiss-Prot']
      else
        'N/A'
      end
    end
  end
end
