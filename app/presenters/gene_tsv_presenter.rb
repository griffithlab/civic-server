class GeneTsvPresenter
  def self.objects
    Gene.joins(variants: [:evidence_items]).uniq
  end

  def self.headers
    [
      'gene_id',
      'gene_civic_url',
      'name',
      'entrez_id',
      'description',
      'last_review_date'
    ]
  end

  def self.row_from_object(gene)
    [
      gene.id,
      LinkAdaptors::Gene.new(gene).short_path(include_domain: true),
      gene.name,
      gene.entrez_id,
      gene.description.gsub("\n", ' '),
      gene.updated_at
    ]
  end

  def self.file_name
    'GeneSummaries.tsv'
  end
end
