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
      asco_abstract_id: source.asco_abstract_id,
      author_list: author_list,
      author_string: source.author_string,
      asco_presenter: source.asco_presenter,
      evidence_item_count: source.evidence_item_count,
      publication_year: source.publication_year,
    }
  end

  def author_list
    if source.source_type == 'PubMed'
      source.author_list.reject(&:blank?)
    elsif source.source_type == 'ASCO'
      source.asco_presenter
    end
  end
end
