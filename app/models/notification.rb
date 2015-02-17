class Notification < ActiveRecord::Base
  belongs_to :user
  belongs_to :subscription
  belongs_to :subscribable, polymorphic: true

  def acknowledge
    self.acknowledged = true
    self.save
  end
end
