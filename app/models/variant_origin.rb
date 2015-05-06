class VariantOrigin < ActiveRecord::Base
  has_many :evidence_items

  def self.origin_count_hash
    self.uniq.pluck(:origin).each_with_object({}) do |origin, h|
      h["#{origin.downcase}_count"] = origin_count(origin)
    end
  end

  private
  def self.origin_count(origin)
    where(origin: origin)
      .joins(:evidence_items)
      .count
  end
end