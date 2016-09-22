class SourceSuggestionBrowseTable < DatatableBase
  private
  FILTER_COLUMN_MAP = {
    'name'             => 'sources.name',
    'journal'          => 'sources.full_journal_title',
    'publication_year' => 'sources.publication_year',
    'submitter'        => 'users.username',
    'gene'             => 'source_suggestions.gene_name',
    'variant'          => 'source_suggestions.variant_name',
    'disease'          => 'source_suggestions.disease_name',
  }

  ORDER_COLUMN_MAP = FILTER_COLUMN_MAP

  def initial_scope
    SourceSuggestion.datatable_scope
  end

  def presenter_class
    SourceSuggestionBrowseRowPresenter
  end

  def select_query
    initial_scope.where("sources.status != 'curated'")
  end

  def count_query
    initial_scope.select('COUNT(DISTINCT(source_suggestions.id)) as count').group('source_suggestions.id')
  end
end