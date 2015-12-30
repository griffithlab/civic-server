class Disease < ActiveRecord::Base
  include WithTimepointCounts
  include WithCapitalizedName

  has_many :evidence_items
  has_and_belongs_to_many :disease_aliases

  def display_name
    name
  end

  def self.timepoint_query
    ->(x) {
            self.joins(:evidence_items)
              .group('diseases.id')
              .select('diseases.id')
              .having('MIN(evidence_items.created_at) >= ?', x)
              .count
          }
  end
end
