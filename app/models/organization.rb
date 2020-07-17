class Organization < ActiveRecord::Base
  has_many :affiliations
  has_many :users, through: :affiliations
  belongs_to :parent, :class_name => 'Organization'
  has_many :groups, :class_name => 'Organization', :foreign_key => 'parent_id'

  validate :maximum_nesting_depth

  has_attached_file :profile_image,
    styles: { x256: '256x256', x128: '128x128', x64: '64x64', x32: '32x32', x14: '14x14' }

  validates_attachment :profile_image,
      content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
      size: { in: 0..15.megabytes }

  def self.datatable_scope
    joins('LEFT OUTER JOIN affiliations ON affiliations.organization_id = organizations.id')
      .joins('LEFT OUTER JOIN users ON users.id = affiliations.user_id')
      .joins('LEFT OUTER JOIN events ON events.originating_user_id = users.id')
  end

  def stats_hash
    sc_ids = Event.where(organization_id: org_and_suborg_ids, action: 'change suggested').map { |e| e.state_params['suggested_change']['id'] }.uniq
    e_ids = Event.where(organization_id: org_and_suborg_ids, action: 'submitted').map{|e| e.subject_id}.uniq
    a_ids = Event.where(organization_id: org_and_suborg_ids, action: 'assertion submitted').map{|e| e.subject_id}.uniq
    {
      'comments': Event.where(organization_id: org_and_suborg_ids).where(action: 'commented').count,
      'suggested_changes': sc_ids.count,
      'applied_changes': SuggestedChange.where(id: sc_ids, status: 'applied').count,
      'submitted_evidence_items': e_ids.count,
      'accepted_evidence_items': EvidenceItem.where(id: e_ids, status: 'accepted').count,
      'suggested_sources': Event.where(organization_id: org_and_suborg_ids).where(action: 'publication suggested').count,
      'submitted_assertions': a_ids.count,
      'accepted_assertions': Assertion.where(id: a_ids, status: 'accepted').count,
    }
  end

  def org_and_suborg_ids
    return [self.id] + self.group_ids
  end

  def all_users
    (self.groups.includes(:users).flat_map(&:users) + self.users).uniq
  end

  def maximum_nesting_depth
    if self.parent_id.present?
      unless self.parent.parent_id.blank?
        errors.add(:parent, "organizations can only be nested one level deep")
      end
    end
  end

end
