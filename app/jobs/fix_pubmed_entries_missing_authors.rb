class FixPubmedEntriesMissingAuthors < ApplicationJob

  def perform
    publications_to_process = find_publications_without_authors
    get_authors_from_pubmed(publications_to_process)
  end

  private
  def find_publications_without_authors
    source_ids_with_authors = Source.joins(:authors).where(source_type: 'PubMed').pluck('sources.id').uniq
    Source.where.not(id: source_ids_with_authors)
  end

  def get_authors_from_pubmed(sources)
    sources.each do |source|
      Scrapers::PubMed.populate_source_fields(source)
    end
  end
end
