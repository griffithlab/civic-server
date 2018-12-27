class EvidenceItemBrowseTable < DatatableBase
  private
  FILTER_COLUMN_MAP = {
    'id' => 'evidence_items.id',
    'description' => 'evidence_items.description',
    'source_title' => 'sources.name',
    'source_citation' => 'sources.description',
    'variant_name' => 'variants.name',
    'gene_name' => 'genes.name',
    'disease' => 'diseases.name',
    'drugs' => 'drugs.name',
    'evidence_level' => 'evidence_items.evidence_level',
    'evidence_type' => 'evidence_items.evidence_type',
    'evidence_direction' => 'evidence_items.evidence_direction',
    'clinical_significance' => 'evidence_items.clinical_significance',
    'phenotypes' => 'phenotypes.hpo_class',
    'variant_origin' => 'evidence_items.variant_origin',
    'rating' => 'evidence_items.rating',
  }

  ORDER_COLUMN_MAP = {
    'id' => 'evidence_items.id',
    'description' => 'evidence_items.description',
    'variant_name' => 'variants.name',
    'gene_name' => 'genes.name',
    'disease' => 'diseases.name',
    'drugs' => 'drug_names',
    'source_name' => 'sources.name',
    'source_citation' => 'sources.citation',
    'evidence_level' => 'evidence_items.evidence_level',
    'evidence_type' => 'evidence_items.evidence_type',
    'evidence_direction' => 'evidence_items.evidence_direction',
    'clinical_significance' => 'evidence_items.clinical_significance',
    'phenotypes' => 'phenotypes.hpo_class',
    'variant_origin' => 'evidence_items.variant_origin',
    'rating' => 'evidence_items.rating',
  }

  def filter(objects)
    filtered_query = objects.dup
    if evidence_level = extract_filter_term('evidence_level')
      filtered_query = filtered_query.where(evidence_level: EvidenceItem.evidence_levels[evidence_level])
      params['filter'].delete('evidence_level')
    end
    if evidence_type = extract_filter_term('evidence_type')
      filtered_query = filtered_query.where(evidence_type: EvidenceItem.evidence_types[evidence_type])
      params['filter'].delete('evidence_type')
    end
    if evidence_direction = extract_filter_term('evidence_direction')
      filtered_query = filtered_query.where(evidence_direction: EvidenceItem.evidence_directions[evidence_direction])
      params['filter'].delete('evidence_direction')
    end
    if clinical_significance = extract_filter_term('clinical_significance')
      filtered_query = filtered_query.where(clinical_significance: EvidenceItem.clinical_significances[clinical_significance])
      params['filter'].delete('clinical_significance')
    end
    if variant_origin = extract_filter_term('variant_origin')
      filtered_query = filtered_query.where(variant_origin: EvidenceItem.variant_origins[variant_origin])
      params['filter'].delete('variant_origin')
    end
    if rating = extract_filter_term('rating')
      filtered_query = filtered_query.where(rating: rating)
      params['filter'].delete('rating')
    end
    super(filtered_query)
  end

  def initial_scope
    EvidenceItem.datatable_scope
  end

  def presenter_class
    EvidenceItemBrowseRowPresenter
  end

  def select_query
    initial_scope.select("evidence_items.id, evidence_items.status, evidence_items.description, evidence_items.evidence_level, evidence_items.evidence_type, evidence_items.evidence_direction, evidence_items.clinical_significance, evidence_items.variant_origin, evidence_items.rating, genes.name as gene_name, genes.id as gene_id, diseases.name as disease_name, array_agg(distinct(drugs.name) order by drugs.name) as drug_names, array_agg(distinct(phenotypes.hpo_class) order by phenotypes.hpo_class) as phenotype_hpo_classes, variants.name as variant_name, variants.id as variant_id, sources.description as source_citation, sources.name as source_title")
      .where("evidence_items.status != 'rejected'")
      .group("evidence_items.id, genes.name, genes.id, diseases.name, variants.name, variants.id, sources.description, sources.name")
  end

  def count_query
    initial_scope.select('COUNT(DISTINCT(evidence_items.id)) as count')
      .where("evidence_items.status != 'rejected'")
  end
end
