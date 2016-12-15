class BadgeClaim < ActiveRecord::Base
  belongs_to :user
  belongs_to :badge

  validates :badge, presence: true

  after_create :init_uuid

  def redeem(user)
    cmd = Actions::RedeemBadgeClaim.new(self, user)
    cmd.perform
  end

  def self.create_many(badge, count)
    BadgeClaim.create(Array.new(count) {{badge: badge}})
  end

  private
  def init_uuid
    unless self.redemption_code.present?
      self.redemption_code = SecureRandom.uuid
      self.save
    end
  end
end
