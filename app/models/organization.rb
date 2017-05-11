class Organization < ActiveRecord::Base
  has_many :users

  has_attached_file :profile_image,
    styles: { x256: '256x256', x128: '128x128', x64: '64x64', x32: '32x32', x14: '14x14' }

  validates_attachment :profile_image,
      content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
      size: { in: 0..15.megabytes }
end
