class Role < ActiveRecord::Base
  has_and_belongs_to_many :users

  def self.default_role
    where(name: 'user').first_or_create!
  end
end
