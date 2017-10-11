class EvidenceItemBrowseTable < DatatableBase
  private
  FILTER_COLUMN_MAP = {
    'pubmed_id' => 'sources.pubmed_id',
    'source_name' => 'sources.name',
    'variant_name' => 'variants.name',
    'gene_entrez_id' => 'genes.entrez_id',
  }

  ORDER_COLUMN_MAP = {
    'evidence_item' => 'evidence_items.id',
    'pubmed_id' => 'sources.pubmed_id',
    'variant_name' => 'variants_name',
    'gene_name' => 'genes.name',
    'disease_name' => 'diseases.name',
  }

  def initial_scope
    EvidenceItem.datatable_scope
  end

  def presenter_class
    EvidenceItemBrowseRowPresenter
  end

  def select_query
    initial_scope.select("evidence_items.id, genes.name as gene_name, diseases.name as disease_name, variants.name as variant_name, sources.pubmed_id as pubmed_id")
      .where("evidence_items.status != 'rejected'")
  end

  def count_query
    initial_scope.select('COUNT(DISTINCT(evidence_items.id)) as count')
      .where("evidence_items.status != 'rejected'")
  end
end
