class FetchSourceCitation < ActiveJob::Base
  def perform(source)
    citation = Scrapers::PubMed.get_citation_from_pubmed_id(source.pubmed_id)
    if citation.present?
      source.description = citation
      source.save
    end
  end
end
