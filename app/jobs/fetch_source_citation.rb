class FetchSourceCitation < ApplicationJob
  def perform(source)
    if source.source_type == 'PubMed'
      Scrapers::PubMed.populate_source_fields(source)
    elsif source.source_type == 'ASCO'
      Scrapers::Asco.populate_source_fields(source)
    end
  end
end
