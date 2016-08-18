require 'ga4gh/genotype_phenotype'

module Ga4ghConverters
  class VariantType
    def self.from_ga4gh(json)
      if (url = json['id']).present?
        soid = url.split('/').last.split('_').last
        ::VariantType.find_by(so_id: soid)
      else
        nil
      end
    end

    def self.to_ga4gh(variant_type)
      Ga4gh::OntologyTerm.new(
        id: url_from_soid(variant_type.soid),
        term: variant_type.name,
        source_name: 'Sequence Ontology',
        source_version: '2016-01-25'
      )
    end

    def self.url_from_soid(soid)
      "http://purl.obolibrary.org/obo/SO_#{soid}"
    end
  end
end
