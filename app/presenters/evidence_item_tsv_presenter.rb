class EvidenceItemTsvPresenter
  def self.objects
    EvidenceItem.eager_load(:disease, :source, :drugs, variant: [:gene])
      .where(status: 'accepted')
  end


  def self.headers
    [
      'gene',
      'entrez_id',
      'variant',
      'disease',
      'doid',
      'drugs',
      'evidence_type',
      'evidence_direction',
      'evidence_level',
      'clinical_significance',
      'evidence_statement',
      'pubmed_id',
      'citation',
      'rating',
      'evidence_status',
      'evidence_id',
      'variant_id',
      'gene_id',
      'chromosome',
      'start',
      'stop',
      'reference_bases',
      'variant_bases',
      'representative_transcript',
      'chromosome2',
      'start2',
      'stop2',
      'representative_transcript2',
      'ensembl_version',
      'reference_build',
      'variant_summary',
      'variant_origin',
      'last_review_date',
      'evidence_civic_url',
      'variant_civic_url',
      'gene_civic_url'
    ]
  end

  def self.row_from_object(ei)
    [
      ei.variant.gene.name,
      ei.variant.gene.entrez_id,
      ei.variant.name,
      ei.disease.name,
      ei.disease.doid,
      ei.drugs.map(&:name).join(','),
      ei.evidence_type,
      ei.evidence_direction,
      ei.evidence_level,
      ei.clinical_significance,
      ei.description.gsub("\n", ' '),
      ei.source.pubmed_id,
      ei.source.description,
      ei.rating,
      ei.status,
      ei.id,
      ei.variant.id,
      ei.variant.gene.id,
      ei.variant.chromosome,
      ei.variant.start,
      ei.variant.stop,
      ei.variant.reference_bases,
      ei.variant.variant_bases,
      ei.variant.representative_transcript,
      ei.variant.chromosome2,
      ei.variant.start2,
      ei.variant.stop2,
      ei.variant.representative_transcript2,
      ei.variant.ensembl_version,
      ei.variant.reference_build,
      ei.variant.description.gsub("\n", ' '),
      ei.variant_origin,
      ei.updated_at,
      LinkAdaptors::EvidenceItem.new(ei).short_path(include_domain: true),
      LinkAdaptors::Variant.new(ei.variant).short_path(include_domain: true),
      LinkAdaptors::Gene.new(ei.variant.gene).short_path(include_domain: true)
    ]
  end

  def self.file_name
    'ClinicalEvidenceSummaries.tsv'
  end
end
