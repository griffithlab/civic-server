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
            puts "No disease found for DOID: #{disease.doid}!"
          end
        end
      end
    end

    def self.get_name_from_doid(doid)
      resp = Util.make_get_request(url_from_doid(doid))
      metadata = JSON.parse(resp)
      metadata["name"].split.map { |word| word[0] = word[0].upcase; word }.join(' ')
    rescue
      nil
    end

    def self.url_from_doid(doid)
      URI.parse("http://www.disease-ontology.org/api/metadata/DOID:#{doid}/")
    end
  end
end
