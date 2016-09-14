require 'ga4gh/genotype_phenotype_service_pb'

module Ga4gh; module Queries
  class FeaturePhenotypeAssociationsSearch
    include WithPagination

    attr_reader :request, :response, :errors

    def initialize(request_body)
      @errors = []
      @request = Ga4gh::SearchGenotypePhenotypeRequest.decode_json(request_body)
      @response = Ga4gh::SearchGenotypePhenotypeResponse.new
    rescue => e
      @errors << e.message
    end

    def perform
      query = generate_query
    end

    def success?
      errors.none?
    end

    private
    def generate_query
      ::EvidenceItems.view_scope
    end
  end
end; end
