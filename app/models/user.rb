class User < ActiveRecord::Base
  has_many :authorizations
  has_and_belongs_to_many :roles

  has_many :comments
  has_many :suggested_changes
  has_many :subscriptions
  has_many :notifications

  before_save :add_default_role

  def self.create_from_omniauth(auth_hash, authorization)
    auth_provider_adaptor(auth_hash['provider']).create_from_omniauth(auth_hash).tap do |user|
      user.authorizations << authorization
      if user.email == 'acc@fastmail.com' || user.email =~ /@genome\.wustl\.edu$/
        user.make_admin!
      end
      user.save
    end
  end

  def stats_hash
    {
      comments: comments.count,
      suggested_changes: suggested_changes.count,
      applied_changes: suggested_changes.where(status: 'applied').count,
      submitted_evidence_items: submitted_evidence_items.count,
      accepted_evidence_items: submitted_evidence_items.where(status: 'accepted').count,
    }
  end

  def display_name
    if username.present?
      username
    elsif name.present?
      name
    elsif email.present?
      email
    else
      id
    end
  end

  def submitted_evidence_items
    EvidenceItem.joins(:audits).where(audits: { action: 'create', user: self })
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

  def self.auth_provider_adaptor(provider)
    @providers_hash ||= {
      'github'        => UserAdaptors::GitHub,
      'orcid'         => UserAdaptors::Orcid,
      'google_oauth2' => UserAdaptors::Google,
    }
    @providers_hash[provider]
  end
end
