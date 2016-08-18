require 'ga4gh/genotype_phenotype'

module Ga4ghConverters
  class Disease
    def self.from_ga4gh(json)
      if (url = json['id']).present?
        doid = url.split('/').last.split('_').last
        ::Disease.find_by(doid: doid)
      else
        nil
      end
    end

    def self.to_ga4gh(disease)
      Ga4gh::OntologyTerm.new(
        id: url_from_doid(disease.doid),
        term: disease.name,
        source_name: 'disease_ontology',
        source_version: '2016-01-25'
      )
    end

    def self.url_from_doid(doid)
      "http://purl.obolibrary.org/obo/DOID_#{doid}"
    end
  end
end
