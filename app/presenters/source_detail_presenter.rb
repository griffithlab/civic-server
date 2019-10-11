class SourceDetailPresenter < SourcePresenter
  def as_json(opts = {})
    super.merge(
      {
        abstract: source.abstract,
        source_suggestions: source.source_suggestions.map { |ss| SourceSuggestionBrowseRowPresenter.new(ss) },
        author_list: author_list,
        asco_presenter: source.asco_presenter,
        author_string: source.author_string,
      }
    )
  end

  private
  def author_list
    source.authors_sources.reload.reject { |as| as.fore_name.blank? && as.last_name.blank? }.map do |as|
      {
        fore_name: as.fore_name,
        last_name: as.last_name,
        position: as.author_position,
      }
    end
  end
end
