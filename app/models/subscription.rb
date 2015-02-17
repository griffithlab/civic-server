class Subscription < ActiveRecord::Base
  validates_presence_of :user, :subscribable

  belongs_to :user
  belongs_to :subscribable, polymorphic: true

  def send_notification(content, url = nil)
    raise 'Implement in subclass!'
  end
end
