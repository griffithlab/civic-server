class GeneBrowseTable < DatatableBase
  private
  FILTER_COLUMN_MAP = {
    'name'                => 'genes.name',
    'gene_aliases'        => 'gene_aliases.name',
    'diseases'            => 'diseases.name',
  }.freeze

  ORDER_COLUMN_MAP = {
    'name'                => 'genes.name',
    'gene_aliases'        => 'alias_names',
    'diseases'            => 'disease_names',
    'variant_count'       => 'variant_count',
    'evidence_item_count' => 'evidence_item_count'
  }.freeze

  def initial_scope
    Gene.datatable_scope
  end

  def presenter_class
    GeneBrowseRowPresenter
  end

  def select_query
    initial_scope.select('genes.id, genes.name, genes.entrez_id, array_agg(distinct(gene_aliases.name) order by gene_aliases.name) as alias_names, array_agg(distinct(diseases.name) order by diseases.name) as disease_names, count(distinct(variants.id)) as variant_count, count(distinct(evidence_items.id)) as evidence_item_count')
      .group('genes.id, genes.name, genes.entrez_id')
      .having('count(distinct(evidence_items.id)) > 0')
  end

  def count_query
    initial_scope.select('COUNT(DISTINCT(genes.id)) as count')
  end
end
