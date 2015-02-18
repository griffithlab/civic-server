class VariantGroupTsvPresenter
  def self.objects
    VariantGroup
  end

  def self.headers
    ['variant_group', 'description']
  end

  def self.row_from_object(variant_group)
    [
      variant_group.name,
      variant_group.description
    ]
  end

  def self.file_name
    'VariantGroupSummaries.tsv'
  end
end
