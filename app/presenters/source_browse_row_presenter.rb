class SourceBrowseRowPresenter
  attr_reader :source

  def initialize(source)
    @source = source
  end

  def as_json
    {
      id: source.id,
      name: source.name,
      journal: source.full_journal_title,
      citation_id: source.citation_id,
      source_type: source.source_type,
      author_list: source.author_list.reject(&:blank?),
      evidence_item_count: source.evidence_item_count,
      publication_year: source.publication_year,
    }
  end
end
