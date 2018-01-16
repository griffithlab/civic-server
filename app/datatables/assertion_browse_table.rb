class AssertionBrowseTable < DatatableBase
  private
  FILTER_COLUMN_MAP = {
    'id' => 'assertions.id',
    'gene_name' => 'genes.name',
    'variant_name' => 'variants.name',
    'disease' => 'diseases.name',
    'status' => 'assertions.status',
  }

  ORDER_COLUMN_MAP ={
    'id' => 'assertions.id',
    'gene_name' => 'genes.name',
    'variant_name' => 'variants.name',
    'disease' => 'diseases.name',
    'status' => 'assertions.status',
  }

  def initial_scope
    Assertion.datatable_scope
  end

  def presenter_class
    AssertionBrowseRowPresenter
  end

  def select_query
    initial_scope.select("assertions.id, assertions.status, genes.name as gene_name, genes.entrez_id as gene_id, diseases.name as disease_name, variants.name as variant_name, variants.id as variant_id, COUNT(DISTINCT(assertions_evidence_items.evidence_item_id)) as evidence_item_count")
      .where("assertions.status != 'rejected'")
      .group("assertions.id, assertions.status, genes.name, genes.entrez_id, diseases.name, variants.name, variants.id")
  end

  def count_query
    initial_scope.select('COUNT(DISTINCT(assertions.id)) as count')
      .where("assertions.status != 'rejected'")
  end
end
