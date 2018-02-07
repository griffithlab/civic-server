class AssertionBrowseTable < DatatableBase
  private
  FILTER_COLUMN_MAP = {
    'id' => 'assertions.id',
    'summary' => 'assertions.summary',
    'gene_name' => 'genes.name',
    'variant_name' => 'variants.name',
    'disease' => 'diseases.name',
    'drugs' => 'drugs.name',
    'status' => 'assertions.status',
  }

  ORDER_COLUMN_MAP ={
    'id' => 'assertions.id',
    'summary' => 'assertions.summary',
    'gene_name' => 'genes.name',
    'variant_name' => 'variants.name',
    'disease' => 'diseases.name',
    'drugs' => 'drugs.name',
    'evidence_type' => 'assertions.evidence_type',
    'evidence_direction' => 'assertions.evidence_direction',
    'clinical_significance' => 'assertions.clinical_significance',
    'status' => 'assertions.status',
  }

  def filter(objects)
    filtered_query = objects.dup
    if evidence_type = extract_filter_term('evidence_type')
      filtered_query = filtered_query.where(evidence_type: Assertion.evidence_types[evidence_type])
      params['filter'].delete('evidence_type')
    end
    if evidence_direction = extract_filter_term('evidence_direction')
      filtered_query = filtered_query.where(evidence_direction: Assertion.evidence_directions[evidence_direction])
      params['filter'].delete('evidence_direction')
    end
    if clinical_significance = extract_filter_term('clinical_significance')
      filtered_query = filtered_query.where(clinical_significance: Assertion.clinical_significances[clinical_significance])
      params['filter'].delete('clinical_significance')
    end
    super(filtered_query)
  end

  def initial_scope
    Assertion.datatable_scope
  end

  def presenter_class
    AssertionBrowseRowPresenter
  end

  def select_query
    initial_scope.select("assertions.id, assertions.status, assertions.summary, assertions.evidence_type, assertions.evidence_direction, assertions.clinical_significance, genes.name as gene_name, genes.entrez_id as gene_id, diseases.name as disease_name, array_agg(distinct(drugs.name) order by drugs.name) as drug_names, variants.name as variant_name, variants.id as variant_id, COUNT(DISTINCT(assertions_evidence_items.evidence_item_id)) as evidence_item_count")
      .where("assertions.status != 'rejected'")
      .group("assertions.id, assertions.status, assertions.summary, assertions.evidence_type, assertions.evidence_direction, assertions.clinical_significance, genes.name, genes.entrez_id, diseases.name, variants.name, variants.id")
  end

  def count_query
    initial_scope.select('COUNT(DISTINCT(assertions.id)) as count')
      .where("assertions.status != 'rejected'")
  end
end
