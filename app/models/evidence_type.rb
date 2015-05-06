class EvidenceType < ActiveRecord::Base
  has_many :evidence_items

  def self.type_count_hash
    self.uniq.pluck(:evidence_type).each_with_object({}) do |type, h|
      h["#{type.downcase}_count"] = type_count(type)
    end
  end

  private
  def self.type_count(type)
    where(evidence_type: type)
      .joins(:evidence_items)
      .count
  end
end
