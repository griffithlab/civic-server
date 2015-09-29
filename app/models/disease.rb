class Disease < ActiveRecord::Base
  include WithTimepointCounts

  has_many :evidence_items

  def display_name
    name
  end

  def self.timepoint_query
    ->(x) { self.joins(:evidence_items).having("min(evidence_items.created_at) >= ?", x) }
  end
end
