require 'net/http'
require 'uri'

module Scrapers
  class MyGeneInfo
    def self.populate_gene_metadata(gene)
      resp = Util.make_get_request(url_from_gene_symbol(gene.name))
      data = JSON.parse(resp)
      if (data['hits'].first)
        create_gene_aliases(gene, data)
        fill_gene_fields(gene, data)
      else
        puts "WARN:received no gene metadata from mygene.info for:#{gene.name}"
        if (gene.name == "MLL")
          gene.entrez_id =  4297 # http://dgidb.genome.wustl.edu/genes/MLL   
          gene.official_name = "MLL"
          puts "INFO:set gene metadata for:#{gene.name}"
        end
        if (gene.name == "MSH1")
          gene.entrez_id =  4292 # http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=HGNC:7127
          gene.official_name = "MSH1"
          puts "INFO:set gene metadata for:#{gene.name}"
        end
      end
      gene
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
  end
end
