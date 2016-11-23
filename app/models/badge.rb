class Badge < ActiveRecord::Base
  serialize :additional_fields, JSON

  has_many :badges_users
end
