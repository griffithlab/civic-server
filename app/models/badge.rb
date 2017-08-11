class Badge < ActiveRecord::Base
  serialize :additional_fields, JSON

  has_many :badge_awards
  has_many :badge_claims

  def badge_awards_count_per_tier
    self.badge_awards.each_with_object(Hash.new(0)) do |award, counts|
      counts[award.tier] += 1
    end
  end
end
