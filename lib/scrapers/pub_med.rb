require 'net/http'
require 'uri'

module Scrapers
  class PubMed
    def self.run
      ActiveRecord::Base.transaction do
        ::Source.all.each do |source|
          populate_source_fields(source)
        end
      end
    end

    def self.populate_source_fields(source)
      resp = call_pubmed_api(source.pubmed_id)
      source.description = resp.citation
      resp.authors.each do |author|
        author_obj = Author.where(
          last_name: author[:last_name],
          fore_name: author[:fore_name]
        ).first_or_create
        AuthorsSource.create(
          source: source,
          author: author_obj,
          author_position: author[:author_position]
        )
      end
      if pmc_id = resp.pmc_id
        source.pmc_id = pmc_id
        source.open_access = true
      end
      (day, month, year) = resp.publication_date
      source.publication_day = day
      source.publication_month = month
      source.publication_year = year
      source.journal = resp.journal
      source.abstract = resp.abstract
      source.save
    end

    def self.call_pubmed_api(pubmed_id)
      http_resp = Util.make_get_request(url_for_pubmed_id(pubmed_id))
      PubMedResponse.new(http_resp)
    end

    private
    def self.url_for_pubmed_id(pubmed_id)
      "http://www.ncbi.nlm.nih.gov/pubmed/#{pubmed_id}?report=xml&format=text"
    end
  end
end
