class FetchSourceCitation < ActiveJob::Base
  def perform(source)
    Scrapers::PubMed.populate_source_fields(source)
  end
end
