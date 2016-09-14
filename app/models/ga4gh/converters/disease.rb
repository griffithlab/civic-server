require 'ga4gh/genotype_phenotype_pb'

module Ga4gh; module Converters
  class Disease < Ga4gh::Converters::Ontology
    def ontology_name
      'disease_ontology'
    end
  end
end; end
