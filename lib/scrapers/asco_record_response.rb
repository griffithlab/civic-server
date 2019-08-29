require 'htmlentities'

module Scrapers
  class AscoRecordResponse
    attr_reader :json
    def initialize(response_body)
      @json = JSON.parse(response_body)
    end

    def presenter
      json['FirstAuthor']
    end

    def asco_abstract_id
      json['abstractId']
    end

    def nct_id
      json['ClinicalTrialRegistryNumber']
    end

    def article_title
      json['Title']
    end

    def journal
      json['SiteCitation']
    end

    def abstract
      sanitizer = Rails::Html::FullSanitizer.new
      decoder = HTMLEntities.new
      decoder.decode(sanitizer.sanitize(json['Body']).strip)
    end
  end
end
