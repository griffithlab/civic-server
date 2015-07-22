class User < ActiveRecord::Base
  include WithTimepointCounts
  include SoftDeletable

  has_many :authorizations

  has_many :comments
  has_many :suggested_changes
  has_many :subscriptions

  belongs_to :organization

  enum area_of_expertise: ['Patient Advocate', 'Clinical Scientist', 'Research Scientist']
  enum role: ['curator', 'reviewer', 'editor']

  def self.create_from_omniauth(auth_hash, authorization)
    auth_provider_adaptor(auth_hash['provider']).create_from_omniauth(auth_hash).tap do |user|
      user.authorizations << authorization
      if user.email == 'acc@fastmail.com' || user.email =~ /@genome\.wustl\.edu$/
        user.role = 'editor'
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

  def make_admin!
    self.role = 'editor'
    self.save
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
