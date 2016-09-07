class User < ActiveRecord::Base
  include WithTimepointCounts
  include SoftDeletable

  has_many :authorizations

  has_many :comments
  has_many :suggested_changes
  has_many :subscriptions
  has_many :events, foreign_key: :originating_user_id
  has_many :domain_expert_tags

  enum area_of_expertise: ['Patient Advocate', 'Clinical Scientist', 'Research Scientist']
  enum role: ['curator', 'editor', 'admin']

  validates_uniqueness_of :username, allow_blank: true
  validates :username, format: { without: /\s|@/, message: 'cannot contain whitespace or @ symbols' }
  validate :username_is_not_role_name
  after_create :assign_default_username
  after_save :check_for_signup_completion

  def self.datatable_scope
    joins('LEFT OUTER JOIN events ON events.originating_user_id = users.id')
      .includes(domain_expert_tags: [:domain_of_expertise])
  end

  def self.index_scope
    includes(domain_expert_tags: [:domain_of_expertise])
  end

  def self.view_scope
    index_scope
  end

  def self.domain_experts_scope
    joins(:domain_expert_tags)
      .includes(domain_expert_tags: [:domain_of_expertise])
  end

  def self.create_from_omniauth(auth_hash, authorization)
    auth_provider_adaptor(auth_hash['provider']).create_from_omniauth(auth_hash).tap do |user|
      user.authorizations << authorization
      if user.email == 'acc@fastmail.com' || user.email =~ /@genome\.wustl\.edu$/
        user.role = 'admin'
      else
        user.role = 'curator'
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
      id.to_s
    end
  end

  def submitted_evidence_items
    EvidenceItem.joins(:submission_event).where(events: {originating_user: self})
  end

  def make_admin!
    self.role = 'admin'
    self.save
  end

  def username_is_not_role_name
    if username.present?
      if (User.roles.keys + User.roles.keys.map(&:pluralize)).include?(username.downcase)
        errors.add(:username, 'cannot be the same as a role name')
      end
    end
  end

  def self.timepoint_query
    ->(x) {
      self.joins(:events)
        .group('users.id')
        .select('users.id')
        .where('events.created_at >= ?', x)
        .uniq
        .count
    }
  end

  def self.auth_provider_adaptor(provider)
    @providers_hash ||= {
      'github'        => UserAdaptors::GitHub,
      'orcid'         => UserAdaptors::Orcid,
      'google_oauth2' => UserAdaptors::Google,
      'developer'     => UserAdaptors::Developer
    }
    @providers_hash[provider]
  end

  private
  def default_username
    basename = if username.present?
                 username
               elsif name.present?
                 name
               elsif email.present?
                 email
               else
                 'unknown_user'
               end
    sanitized_name = basename.gsub(/[@#\s]/,'')
    counter = 1
    appended = false
    while User.where(username: sanitized_name).exists? do
      if appended
        sanitized_name[-1] = counter
      else
        sanitized_name = sanitized_name + "_#{counter}"
        appended = true
      end
      counter += 1
    end
    sanitized_name
  end

  def assign_default_username
    self.username = default_username
  end

  def check_for_signup_completion
    if self.errors.none? && self.username.present? && self.accepted_license?
      self.signup_complete = true
      self.save
    end
  end
end
