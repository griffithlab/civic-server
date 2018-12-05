class SourceDetailPresenter < SourcePresenter
  def as_json(opts = {})
    super.merge(
      {
        abstract: source.abstract,
        source_suggestions: source.source_suggestions.map { |ss| SourceSuggestionBrowseRowPresenter.new(ss) },
        author_list: author_list,
        asco_presenter: source.asco_presenter,
        author_string: author_string,
      }
    )
  end

  private
  def author_list
    source.authors_sources(1).reject { |as| as.fore_name.blank? && as.last_name.blank? }.map do |as|
      {
        fore_name: as.fore_name,
        last_name: as.last_name,
        position: as.author_position,
      }
    end
  end

  private
  def author_string
    if source.source_type == 'PubMed'
      authors = source.authors_sources(1).reject { |as| as.fore_name.blank? && as.last_name.blank? }.sort_by{ |as| as.author_position }.map do |as|
        "#{as.fore_name} #{as.last_name}"
      end
      authors.join(', ')
    elsif source.source_type == 'ASCO'
      source.asco_presenter
    end
  end
end
