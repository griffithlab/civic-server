require 'ga4gh/common_pb'

module Ga4gh; module Converters
  class QueryError
    def to_ga4gh(query)
      Ga4gh::GAException.new(
        message: query.errors.join(', '),
        error_code: 400
      )
    end
  end
end; end
