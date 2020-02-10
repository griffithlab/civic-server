class FixPubmedEntriesMissingAuthors < ApplicationJob

  def perform
    publications_to_process = find_publications_without_authors
    get_authors_from_pubmed(publications_to_process)
  end

  private
  def find_publications_without_authors
    Source.left_outer_joins(:authors).where(source_type: 'PubMed').where("authors.id IS NULL").pluck('sources.id')
  end

  def get_authors_from_pubmed(sources)
    sources.each do |source|
      Scrapers::PubMed.populate_source_fields(source)
      sleep 1
    end
  end
end
