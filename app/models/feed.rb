class Feed < ActiveRecord::Base
  belongs_to :user, foreign_key: :owner_id
  belongs_to :event

  def self.for_user(user)
    where(user: user)
  end
end
