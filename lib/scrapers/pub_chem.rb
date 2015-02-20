module Scrapers
  class PubChem
    def self.get_name_from_pubchem_id(pubchem_id)
      resp = Util.make_get_request(url_from_pubchem_id(pubchem_id))
      extract_drug_name_from_response(resp)
    rescue
      ''
    end

    private
    def self.url_from_pubchem_id(pubchem_id)
      "https://pubchem.ncbi.nlm.nih.gov/rest/pug_view/data/compound/#{pubchem_id}/XML/"
    end

    def self.extract_drug_name_from_response(text)
      xml = Nokogiri::XML(text)
      xml.remove_namespaces!
      node = xml.at_xpath('//TOCHeading[text()="Record Title"]').parent
      node.at_xpath('Information/StringValue').text.capitalize
    end
  end
end
