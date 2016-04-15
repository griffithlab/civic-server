class GeneTsvPresenter
  def self.objects
    Gene.joins(variants: [:evidence_items]).uniq
  end

  def self.headers
    ['gene_id', 'gene_civic_url', 'name', 'entrez_id', 'description']
  end

  def self.row_from_object(gene)
    [
      gene.id,
      LinkAdaptors::Gene.new(gene).path(include_domain: true),
      gene.name,
      gene.entrez_id,
      gene.description.gsub("\n", ' ')
    ]
  end

  def self.file_name
    'GeneSummaries.tsv'
  end
end
