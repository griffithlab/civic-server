class SourceBrowseTable < DatatableBase
  private
  FILTER_COLUMN_MAP = {
    'name'                => 'sources.name',
    'journal'             => 'sources.full_journal_title',
    'citation_id'         => 'sources.citation_id',
    'asco_abstract_id'    => 'sources.asco_abstract_id',
    'source_type'         => 'sources.source_type',
    'publication_year'    => 'CAST(sources.publication_year AS text)',
    'author_list'         => 'authors.last_name',
  }

  ORDER_COLUMN_MAP = {
    'name'                => 'sources.name',
    'journal'             => 'sources.full_journal_title',
    'citation_id'         => 'sources.citation_id',
    'asco_abstract_id'    => 'sources.asco_abstract_id',
    'publication_year'    => 'sources.publication_year',
    'author_list'         => 'author_list',
    'evidence_item_count' => 'evidence_item_count',
  }

  def initial_scope
    Source.datatable_scope
  end

  def presenter_class
    SourceBrowseRowPresenter
  end

  def select_query
    initial_scope.select("sources.id, sources.name, sources.full_journal_title, sources.citation_id, sources.asco_abstract_id, sources.source_type, sources.publication_year, array_agg(distinct(concat_ws(' ', authors.last_name, left(authors.fore_name, 1)))) as author_list, sources.asco_presenter, COUNT(DISTINCT(evidence_items.id)) as evidence_item_count")
      .group('sources.id, sources.name, sources.full_journal_title, sources.citation_id, sources.source_type, sources.publication_year')
  end

  def count_query
    initial_scope.select('COUNT(DISTINCT(sources.id)) as count')
  end
end
