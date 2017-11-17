module Scrapers
  class HumanPhenotypeOntology
    def self.get_name_from_hpo_id(hpo_id)
      resp = Util.make_get_request(url())
      extract_class_name_from_response_for_hpo_id(resp, hpo_id)
    rescue
      ''
    end

    private
    def self.url
      "https://raw.githubusercontent.com/obophenotype/human-phenotype-ontology/master/hp.owl"
    end

    def self.extract_class_name_from_response_for_hpo_id(resp, hpo_id)
      xml = Nokogiri::XML(resp)
      hpo_id = hpo_id.sub(':', '_')
      node = xml.at_xpath("//owl:Class[@rdf:about=\"http://purl.obolibrary.org/obo/#{hpo_id}\"]")
      node.at_xpath('rdfs:label').text
    end
  end
end
