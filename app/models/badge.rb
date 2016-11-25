class Badge < ActiveRecord::Base
  serialize :additional_fields, JSON

  has_many :badges_users
  has_many :users, through: :badges_users
end
