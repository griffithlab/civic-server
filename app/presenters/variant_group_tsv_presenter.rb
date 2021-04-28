class VariantGroupTsvPresenter
  def self.objects
    VariantGroup
  end

  def self.headers
    [
      'variant_group_id',
      'variant_group_civic_url',
      'variant_group',
      'description',
      'last_review_date',
      'is_flagged'
    ]
  end

  def self.row_from_object(variant_group)
    [
      variant_group.id,
      LinkAdaptors::VariantGroup.new(variant_group).short_path(include_domain: true),
      variant_group.name,
      variant_group.description.gsub("\n", ' '),
      variant_group.updated_at,
      variant_group.flagged
    ]
  end

  def self.file_name
    'VariantGroupSummaries.tsv'
  end
end
