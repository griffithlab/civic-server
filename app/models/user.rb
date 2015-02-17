class User < ActiveRecord::Base
  has_many :authorizations
  has_and_belongs_to_many :roles

  has_many :comments
  has_many :suggested_changes
  has_many :subscriptions
  has_many :notifications

  before_save :add_default_role

  def self.create_from_omniauth(auth_hash, authorization)
    User.create(
      name: auth_hash['info']['name'],
      email: auth_hash['info']['email'],
      nickname: auth_hash['info']['nickname'],
      authorizations: [authorization]
    ).tap do |u|
      if u.email == 'acc@fastmail.com'
        u.make_admin!
      end
    end
  end

  def self.default_scope
    eager_load(:roles)
  end

  def is_admin?
    has_role?(Role.admin_role)
  end

  def is_moderator?
    has_role?(Role.moderator_role)
  end

  def make_admin!
    assign_role(Role.admin_role)
  end

  def make_moderator!
    assign_role(Role.moderator_role)
  end

  def revoke_admin!
    roles.delete(Role.admin_role)
  end

  private
  def add_default_role
    assign_role(Role.default_role) unless roles.any?
  end

  def has_role?(role)
    roles.include?(role)
  end

  def assign_role(role)
    unless has_role?(role)
      roles << role
    end
  end
end
