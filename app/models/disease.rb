class Disease < ActiveRecord::Base
  include WithTimepointCounts

  has_many :evidence_items
  has_and_belongs_to_many :disease_aliases

  def display_name
    name
  end

  def self.timepoint_query
    ->(x) { self.joins(:evidence_items).having("min(evidence_items.created_at) >= ?", x) }
  end
end
