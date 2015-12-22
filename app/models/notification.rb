class Notification < ActiveRecord::Base
  self.inheritance_column = :_unused
  belongs_to :notified_user, class_name: User
  belongs_to :originating_user, class_name: User
  belongs_to :event
  belongs_to :subscription

  enum type: [:subscribed_event, :mention, :site_update, :message]

  def self.unread_count_for_user(user)
    where(notified_user: user, seen: false).count
  end

  def acknowledge!
    self.seen = true
    self.save
  end
end