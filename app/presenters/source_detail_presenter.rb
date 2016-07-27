class SourceDetailPresenter < SourcePresenter
  def as_json(opts = {})
    super.merge(
      {
        abstract: source.abstract,
        author_list: author_list
      }
    )
  end

  private
  def author_list
    source.publication_authors.reject { |author| author.fore_name.blank? && author.last_name.blank? }.map do |author|
      {
        fore_name: author.fore_name,
        last_name: author.last_name
      }
    end
  end
end
