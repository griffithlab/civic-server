class VariantTsvPresenter
  def self.objects
    Variant.joins(:evidence_items)
      .includes(:gene, :variant_groups, :variant_types, :hgvs_expressions)
      .uniq
  end

  def self.headers
    [
      'variant_id',
      'variant_civic_url',
      'gene',
      'entrez_id',
      'variant',
      'summary',
      'variant_groups',
      'chromosome',
      'start',
      'stop',
      'reference_bases',
      'variant_bases',
      'representative_transcript',
      'ensembl_version',
      'reference_build',
      'chromosome2',
      'start2',
      'stop2',
      'representative_transcript2',
      'variant_types',
      'hgvs_expressions',
      'last_review_date',
      'civic_actionability_score',
      'allele_registry_id',
    ]
  end

  def self.row_from_object(variant)
    [
      variant.id,
      LinkAdaptors::Variant.new(variant).short_path(include_domain: true),
      variant.gene.name,
      variant.gene.entrez_id,
      variant.name,
      variant.description.gsub("\n", ' '),
      variant.variant_groups.map(&:name).join(','),
      variant.chromosome,
      variant.start,
      variant.stop,
      variant.reference_bases,
      variant.variant_bases,
      variant.representative_transcript,
      variant.ensembl_version,
      variant.reference_build,
      variant.chromosome2,
      variant.start2,
      variant.stop2,
      variant.representative_transcript2,
      variant.variant_types.map(&:name).join(','),
      variant.hgvs_expressions.map(&:expression).join(','),
      variant.updated_at,
      variant.civic_actionability_score,
      variant.allele_registry_id,
    ]
  end

  def self.file_name
    'VariantSummaries.tsv'
  end
end
