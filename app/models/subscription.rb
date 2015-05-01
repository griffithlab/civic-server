class Subscription < ActiveRecord::Base
  validates_presence_of :user

  belongs_to :user
  belongs_to :subscribable, polymorphic: true

  def self.meta_subscriptions_for_event(event)
    where(action_type: event.action, action_class: event.subject_type)
  end

  def send_notification(event)
    raise 'Implement in subclass!'
  end
end
