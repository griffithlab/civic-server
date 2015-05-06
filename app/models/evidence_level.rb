class EvidenceLevel < ActiveRecord::Base
  has_many :evidence_items

  def self.level_count_hash
    self.uniq.pluck(:level).each_with_object({}) do |level, h|
      h["level_#{level.downcase}_count"] = level_count(level)
    end
  end

  private
  def self.level_count(level)
    where(level: level)
      .joins(:evidence_items)
      .count
  end
end
