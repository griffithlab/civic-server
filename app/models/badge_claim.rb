class BadgeClaim < ActiveRecord::Base
  belongs_to :user
  belongs_to :badge

  validates :badge, presence: true

  def redeem(user)
    cmd = Actions::RedeemBadgeClaim.new(self, user)
    cmd.perform
  end
end
