class VariantTsvPresenter
  def self.objects
    Variant.joins(:evidence_items)
      .includes(:gene, :variant_groups)
      .uniq
  end

  def self.headers
    [
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
    ]
  end

  def self.row_from_object(variant)
    [
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
    ]
  end

  def self.file_name
    'VariantSummaries.tsv'
  end
end
