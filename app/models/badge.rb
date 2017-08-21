class Badge < ActiveRecord::Base
  serialize :additional_fields, JSON

  has_many :badge_awards
  has_many :badge_claims
end
