module Scrapers
  class EntrezGene
    def self.get_gene_symbol_from_entrez_id(entrez_id)
      resp = Util.make_get_request(url_from_entrez_id(entrez_id))
      extract_gene_symbol_from_response(resp)
    rescue
      ''
    end

    private
    def self.url_from_entrez_id(entrez_id)
      "https://www.ncbi.nlm.nih.gov/gene/?term=#{entrez_id}[id]&report=xml&format=text"
    end

    def self.extract_gene_symbol_from_response(text)
      xml = Nokogiri::XML(Nokogiri::XML(text).text)
      node = xml.at_xpath('//Gene-commentary_properties/Gene-commentary/Gene-commentary_label[text()="Official Symbol"]').parent
      node.at_xpath('Gene-commentary_text').text
    end
  end
end
