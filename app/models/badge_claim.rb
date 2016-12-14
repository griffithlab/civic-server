class BadgeClaim < ActiveRecord::Base
  belongs_to :user
  belongs_to :badge

  validates :badge, presence: true

  def redeem(user)
    cmd = Actions::RedeemBadgeClaim.new(self, user)
    cmd.perform
  end

  def claim_link
    link_to 'Claim Badge',  "/api/badges/redeem/#{self.id}"
  end

  def self.create_many(badge, count)
    BadgeClaim.create(Array.new(count) {{badge: badge}})
  end
end
