class VariantTsvPresenter
  def self.objects
    Variant.joins(:evidence_items)
      .includes(:gene, :variant_groups, :variant_types, :hgvs_expressions)
      .where("evidence_items.status = 'accepted'")
      .distinct
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
      'civic_variant_evidence_score',
      'allele_registry_id',
      'clinvar_ids',
      'variant_aliases',
      'assertion_ids',
      'assertion_civic_urls',
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
      variant.clinvar_entries.map(&:clinvar_id).join(','),
      variant.variant_aliases.map(&:name).join(','),
      variant.assertions.map(&:id).join(','),
      variant.assertions.map{|a| LinkAdaptors::Assertion.new(a).short_path(include_domain: true)},
    ]
  end

  def self.file_name
    'VariantSummaries.tsv'
  end
end
