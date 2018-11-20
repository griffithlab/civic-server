module Scrapers
  class AscoQueryResponse
    attr_reader :json
    def initialize(response_body)
      @json = JSON.parse(response_body)
    end

    def citations
      json['response']['docs'].each_with_object([]) do |element, o|
        o.append({
          description: [element['FirstAuthor'], element['Year'], element['MeetingName'], "Abstract #{element['AbstID']}"].join(', '),
          citation_id: element['_id'],
          source_type: 'asco',
          status: 'new',
        })
      end
    end

    #def authors
    #  json['response']['docs'].first
    #end
    def publication_year
      json['response']['docs'].first['Year']
    end
  end
end
