require 'ga4gh/genotype_phenotype_pb'

module Ga4gh; module Converters
  class PhenotypeDisease
    attr_reader :disease

    def initialize(disease)
      @disease = disease
    end

    def to_ga4gh
      Ga4gh::PhenotypeInstance.new(
        id: disease.id.to_s,
        type: Ga4gh::Converters::Disease.new.to_ga4gh(disease),
        description: disease.display_name,
      )
    end
  end
end; end

#missing:
# type? (is disease ontology okay for this?)
# qualifier(s) PATO?
# age_of_onset HPO
# info (additional key-value pairs?)
