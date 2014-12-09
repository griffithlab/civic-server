class User < ActiveRecord::Base
  has_many :authorizations
  has_and_belongs_to_many :roles

  has_many :comments
  has_many :suggested_changes

  before_save :add_default_role

  def self.create_from_omniauth(auth_hash, authorization)
    User.create(
      name: auth_hash['info']['name'],
      email: auth_hash['info']['email'],
      nickname: auth_hash['info']['nickname'],
      authorizations: [authorization]
    )
  end

  def self.default_scope
    eager_load(:roles)
  end

  def is_admin?
    roles.any? { |r| r.name == 'admin' }
  end

  def is_super_user?
    roles.any? { |r| r.name == 'super_user' }
  end

  private
  def add_default_role
    roles << Role.default_role unless roles.any?
  end
end
