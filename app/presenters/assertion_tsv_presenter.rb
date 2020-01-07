class AssertionTsvPresenter
  def self.objects
    Assertion.eager_load(:disease, :drugs, :phenotypes, :variant, :gene, :evidence_items)
      .where(status: 'accepted')
  end


  def self.headers
    [
      'gene',
      'entrez_id',
      'variant',
      'disease',
      'doid',
      'phenotypes',
      'drugs',
      'assertion_type',
      'assertion_direction',
      'clinical_significance',
      'acmg_codes',
      'amp_category',
      'nccn_guideline',
      'nccn_guideline_version',
      'regulatory_approval',
      'fda_companion_test',
      'assertion_summary',
      'assertion_description',
      'assertion_id',
      'evidence_item_ids',
      'variant_id',
      'gene_id',
      'last_review_date',
      'assertion_civic_url',
      'evidence_items_civic_url',
      'variant_civic_url',
      'gene_civic_url'
    ]
  end

  def self.row_from_object(a)
    [
      a.gene.name,
      a.gene.entrez_id,
      a.variant.name,
      a.disease.name,
      a.disease.doid,
      a.phenotypes.map(&:hpo_class).join(','),
      a.drugs.map(&:name).join(','),
      a.evidence_type,
      a.evidence_direction,
      a.clinical_significance,
      a.acmg_codes.map(&:code).join(','),
      a.amp_level,
      a.nccn_guideline.name,
      a.nccn_guideline_version,
      a.fda_regulatory_approval,
      a.fda_companion_test,
      a.summary,
      a.description.gsub("\n", ' '),
      a.id,
      a.evidence_items.map(&:id).join(','),
      a.variant.id,
      a.gene.id,
      a.updated_at,
      LinkAdaptors::Assertion.new(a).short_path(include_domain: true),
      a.evidence_items.map{|ei| LinkAdaptors::EvidenceItem.new(ei).short_path(include_domain: true)}.join(','),
      LinkAdaptors::Variant.new(a.variant).short_path(include_domain: true),
      LinkAdaptors::Gene.new(a.gene).short_path(include_domain: true)
    ]
  end

  def self.file_name
    'AssertionSummaries.tsv'
  end
end
