class Organization < ActiveRecord::Base
  has_many :affiliations
  has_many :users, through: :affiliation
  belongs_to :parent, :class_name => 'Organization'
  has_many :groups, :class_name => 'Organization', :foreign_key => 'parent_id'

  validate :maximum_nesting_depth

  has_attached_file :profile_image,
    styles: { x256: '256x256', x128: '128x128', x64: '64x64', x32: '32x32', x14: '14x14' }

  validates_attachment :profile_image,
      content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
      size: { in: 0..15.megabytes }

  def self.datatable_scope
    joins('LEFT OUTER JOIN users ON users.organization_id = organizations.id')
      .joins('LEFT OUTER JOIN events ON events.originating_user_id = users.id')
  end

  def stats_hash
    (Hash.new { |h, k| h[k] = 0 }).tap do |accum|
      all_users.each do |u|
        u.stats_hash.each do |k, v|
          accum[k] += v
        end
      end
    end
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
