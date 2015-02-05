require 'net/http'
require 'uri'

module Scrapers
  class DiseaseOntology
    def self.run
      ActiveRecord::Base.transaction do
        Disease.all.each do |disease|
          begin
            disease.name = get_name_from_doid(disease.doid)
            disease.save
          rescue => e
            puts e.message
          end
        end
      end
    end

    def self.get_name_from_doid(doid)
      metadata = call_disease_ontology_api(doid)
      metadata["name"]
    end

    def self.call_disease_ontology_api(doid)
      url = url_for_doid(doid)
      req = Net::HTTP::Get.new(url.path)
      res = Net::HTTP.start(url.host, url.port) { |http| http.request(req) }
      raise "Request failed! No disease found for DOID: #{doid}" unless res.code == "200"
      JSON.parse(res.body)
    end

    def self.url_for_doid(doid)
      URI.parse("http://www.disease-ontology.org/api/metadata/DOID:#{doid}/")
    end
  end
end
