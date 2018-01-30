class SourceSuggestionBrowseRowPresenter
  attr_reader :suggestion

  def initialize(source_suggestion)
    @suggestion = source_suggestion
  end

  def as_json(opts = {})
    params = {
      id: suggestion.id,
      source_id: suggestion.source.id,
      journal: suggestion.source.full_journal_title,
      citation: suggestion.source.description,
      pubmed_id: suggestion.source.pubmed_id,
      publication_year: suggestion.source.publication_year,
      submitter: UserPresenter.new(suggestion.user),
      gene: suggestion.gene_name,
      variant: suggestion.variant_name,
      initial_comment: suggestion.initial_comment,
      status: suggestion.status,
      created_at: suggestion.created_at,
      reason: suggestion.reason
    }
    if suggestion.disease_name.present?
      params['disease'] = DiseasePresenter.new(suggestion.disease)
    else
      params['disease'] = nil
    end
    params
  end
end
