class VariantTsvPresenter
  def self.objects
    Variant.includes(:gene, :variant_groups)
  end

  def self.headers
    ['gene', 'entrez_id', 'variant', 'summary', 'variant_groups']
  end

  def self.row_from_object(variant)
    [
      variant.gene.name,
      variant.gene.entrez_id,
      variant.name,
      variant.description,
      variant.variant_groups.map(&:name).join(',')
    ]
  end

  def self.file_name
    'VariantSummaries.tsv'
  end
end
