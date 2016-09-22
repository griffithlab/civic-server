class SourceSuggestionBrowseRowPresenter
  attr_reader :suggestion

  def initialize(source_suggestion)
    @suggestion = source_suggestion
  end

  def as_json(opts = {})
    {
      source_id: suggestion.source.id,
      journal: suggestion.source.full_journal_title,
      publication_year: suggestion.source.publication_year,
      submitter: suggestion.user.username,
      gene: suggestion.gene_name,
      variant: suggestion.variant_name,
      disease: suggestion.disease_name
    }
  end
end
