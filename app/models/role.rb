class Role < ActiveRecord::Base
  has_and_belongs_to_many :users

  def self.default_role
    role_init('user')
  end

  def self.admin_role
    role_init('admin')
  end

  def self.moderator_role
    role_init('moderator')
  end

  private
  def self.role_init(role_name)
    where(name: role_name).first_or_create!
  end
end
