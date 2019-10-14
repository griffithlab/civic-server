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

    def self.get_citation_from_pubmed_id(pubmed_id)
      resp = call_pubmed_api(pubmed_id)
      resp.citation
    end

    def self.populate_source_fields(source)
      resp = call_pubmed_api(source.citation_id)
      source.description = resp.citation
      resp.authors.each do |author|
        author_obj = Author.where(
          last_name: author[:last_name],
          fore_name: author[:fore_name]
        ).first_or_create
        AuthorsSource.where(
          source: source,
          author: author_obj,
          author_position: author[:author_position]
        ).first_or_create
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
      source.name = resp.article_title
      source.full_journal_title = resp.full_journal_title
      source.abstract = resp.abstract
      source.is_review = resp.is_review?
      clinical_trials = resp.clinical_trial_ids.uniq.map do |nct_id|
        ::ClinicalTrial.where(nct_id: nct_id).first_or_create
      end
      source.clinical_trials = clinical_trials
      source.save
    end

    def self.call_pubmed_api(pubmed_id)
      http_resp = Util.make_get_request(url_for_pubmed_id(pubmed_id))
      PubMedResponse.new(http_resp)
    end

    private
    def self.url_for_pubmed_id(pubmed_id)
      "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&id=#{pubmed_id}&retmode=xml"
    end
  end
end
