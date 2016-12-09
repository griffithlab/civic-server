class BadgeClaim < ActiveRecord::Base
  belongs_to :user
  belongs_to :badge

  validates :badge, presence: true

  def redeem(user)
    if self.user.nil?
      if user.badges.include?(self.badge)
        raise "#{self.user.display_name} already has badge #{self.badge.name}"
      end
      user.badges.push(self.badge)
      self.user = user
      BadgeClaim.transaction do
        user.save!
        self.save!
      end
    else
      raise "already claimed by #{self.user.display_name}"
    end
  end
end
