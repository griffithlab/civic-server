class Disease < ActiveRecord::Base
  include WithTimepointCounts
  include WithCapitalizedName
  include WithDomainExpertTags

  has_many :evidence_items
  has_and_belongs_to_many :disease_aliases

  def self.timepoint_query
    ->(x) {
            self.joins(:evidence_items)
              .group('diseases.id')
              .select('diseases.id')
              .where("evidence_items.status != 'rejected'")
              .having('MIN(evidence_items.created_at) >= ?', x)
              .count
          }
  end

  def self.merge_diseases(disease_to_keep, disease_to_remove)
    cmd = Actions::MergeDiseases.new(disease_to_keep, disease_to_remove)
    cmd.perform
  end
end
