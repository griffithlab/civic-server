class Organization < ActiveRecord::Base
  has_many :users

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
      users.each do |u|
        u.stats_hash.each do |k, v|
          accum[k] += v
        end
      end
    end
  end
end
