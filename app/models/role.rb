class Role < ActiveRecord::Base
  has_and_belongs_to_many :users

  def self.default_role
    first_or_create(name: 'user')
  end
end
