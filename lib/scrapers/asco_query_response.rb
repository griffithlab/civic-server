module Scrapers
  class AscoQueryResponse
    attr_reader :json
    def initialize(response_body)
      @json = JSON.parse(response_body)
    end

    def citations
      json['response']['docs'].each_with_object([]) do |element, o|
        o.append({
          citation: [author_for_element(element), element['Year'], element['MeetingName'], "Abstract #{element['AbstID']}"].join(', '),
          citation_id: element['_id'],
          source_type: 'ASCO',
          status: 'new',
        })
      end
    end

    def publication_year
      json['response']['docs'].first['Year']
    end

    private
    def author_for_element(elem)
      if elem['FirstAuthor'].present?
        elem['FirstAuthor']
      elsif elem['Authors'].present?
        elem['Authors'].first
      else
        ''
      end
    end
  end
end
