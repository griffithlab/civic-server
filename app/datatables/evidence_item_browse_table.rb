class EvidenceItemBrowseTable < DatatableBase
  private
  FILTER_COLUMN_MAP = {
    'id' => 'evidence_items.id',
    'source_title' => 'sources.name',
    'source_citation' => 'sources.description',
    'variant_name' => 'variants.name',
    'gene_name' => 'genes.name',
    'disease' => 'diseases.name',
  }

  ORDER_COLUMN_MAP = {
    'id' => 'evidence_items.id',
    'variant_name' => 'variants_name',
    'gene_name' => 'genes.name',
    'disease' => 'diseases.name',
    'source_name' => 'sources.name',
    'source_citation' => 'sources.citation'
  }

  def initial_scope
    EvidenceItem.datatable_scope
  end

  def presenter_class
    EvidenceItemBrowseRowPresenter
  end

  def select_query
    initial_scope.select("evidence_items.id, genes.name as gene_name, genes.entrez_id as gene_id, diseases.name as disease_name, variants.name as variant_name, variants.id as variant_id, sources.description as source_citation, sources.name as source_title")
      .where("evidence_items.status != 'rejected'")
  end

  def count_query
    initial_scope.select('COUNT(DISTINCT(evidence_items.id)) as count')
      .where("evidence_items.status != 'rejected'")
  end
end
