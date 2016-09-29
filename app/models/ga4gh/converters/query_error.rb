module Ga4gh; module Converters
  class QueryError
    def to_ga4gh(query)
     {
        message: query.errors.join(', '),
        errorCode: 400
     }
    end
  end
end; end
