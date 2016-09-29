module Ga4gh; module Converters
  class PhenotypeDisease
    attr_reader :disease

    def initialize(disease)
      @disease = disease
    end

    def to_ga4gh
      {
        id: disease.id.to_s,
        type: Ga4gh::Converters::Disease.new.to_ga4gh(disease),
        description: disease.display_name,
      }
    end
  end
end; end
