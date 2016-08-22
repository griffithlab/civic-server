class VariantBrowseTable < DatatableBase
  private
  FILTER_COLUMN_MAP = {
    'entrez_gene'         => 'genes.name',
    'variant'             => 'variants.name',
    'diseases'            => 'diseases.name',
    'drugs'               => 'drugs.name'
  }.freeze

  ORDER_COLUMN_MAP = {
    'entrez_gene'         => 'entrez_name',
    'gene_id'             => 'gene_id',
    'variant'             => 'variants.name',
    'diseases'            => 'disease_names',
    'evidence_item_count' => 'evidence_item_count',
    'drugs'               => 'drug_names'
  }.freeze

  def initial_scope
    Variant.datatable_scope
  end

  def presenter_class
    VariantBrowseRowPresenter
  end

  def select_query
    initial_scope.select('variants.id, variants.name, array_agg(distinct(diseases.name) order by diseases.name desc) as disease_names, max(genes.id) as gene_id, max(genes.entrez_id) as entrez_id, max(genes.name) as entrez_name, count(distinct(evidence_items.id)) as evidence_item_count, array_agg(distinct(drugs.name) order by drugs.name) as drug_names')
      .where("evidence_items.status != 'rejected'")
      .group('variants.id, variants.name')
      .having('count(distinct(evidence_items.id)) > 0')
  end

  def count_query
    initial_scope.select('COUNT(DISTINCT(variants.id)) as count')
      .where("evidence_items.status != 'rejected'")
  end
end
