module Ga4gh; module Queries
  class PhenotypesSearch
    include WithPagination

    attr_reader :request, :response, :errors

    def initialize(request_body)
      @errors = []
      @request = Ga4gh::SearchPhenotypesRequest.decode_json(request_body)
      @response = Ga4gh::SearchPhenotypesResponse.new
    rescue => e
      @errors << e.message
    end

    def perform
    end

    def success?
      errors.none?
    end

    private
    def generate_query
    end
  end
end; end