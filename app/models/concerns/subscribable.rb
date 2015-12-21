module Subscribable
  extend ActiveSupport::Concern
  included do
    has_many :subscriptions, as: :subscribable
    has_many :events, as: :subject
    after_save :sweep_unlinkable_events
  end

  def subscribe_user(user, subscription_type = OnSiteSubscription)
    subscription_type.where(subscribable: self, user: user).first_or_create
  end

  def unsubscribe_user(user)
    Subscription.where(user: user, subscribable: self).each do |subscription|
      subscription.destroy
    end
  end

  def parent_subscribables
    []
  end

  def state_params
    {}
  end

  private
  def sweep_unlinkable_events
    if self.deleted? && !self.deleted_was?
      self.events.each do |e|
        e.unlinkable = true
        e.save
      end
    end
  end
end
