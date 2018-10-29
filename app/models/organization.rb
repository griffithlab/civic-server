class Organization < ActiveRecord::Base
  has_many :users
  belongs_to :parent, :class_name => 'Organization'
  has_many :groups, :class_name => 'Organization', :foreign_key => 'parent_id'

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
    users = self.users
    self.groups.each_with_object(users) do |g, u|
      u << g.users
    end
    return users
  end
end
