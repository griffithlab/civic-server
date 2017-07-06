class SourceSuggestionBrowseRowPresenter
  attr_reader :suggestion

  def initialize(source_suggestion)
    @suggestion = source_suggestion
  end

  def as_json(opts = {})
    {
      id: suggestion.id,
      source_id: suggestion.source.id,
      journal: suggestion.source.full_journal_title,
      citation: suggestion.source.description,
      pubmed_id: suggestion.source.pubmed_id,
      publication_year: suggestion.source.publication_year,
      submitter: UserPresenter.new(suggestion.user),
      gene: suggestion.gene_name,
      variant: suggestion.variant_name,
      disease: suggestion.disease_name,
      initial_comment: suggestion.initial_comment,
      status: suggestion.status,
      created_at: suggestion.created_at,
      reason: suggestion.reason
    }
  end
end
