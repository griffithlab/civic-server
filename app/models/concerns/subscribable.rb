module Subscribable
  extend ActiveSupport::Concern
  included do
    has_many :subscriptions, as: :subscribable
    has_many :events, as: :subject
    after_save :sweep_unlinkable_events_for_soft_delete
    before_destroy :sweep_unlinkable_events_for_hard_delete
  end

  def subscribe_user(user, subscription_type = OnSiteSubscription)
    unless subscription_type.where(subscribable: aggregate_parent_subscribables, user: user).any?
      subscription_type.where(subscribable: self, user: user).first_or_create
    end
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

  def aggregate_parent_subscribables(all_subscribables = [])
    parent_subscribables.each do |parent|
      all_subscribables << parent
      parent.aggregate_parent_subscribables(all_subscribables)
    end
    all_subscribables
  end

  private
  def sweep_unlinkable_events_for_soft_delete
    if self.respond_to?(:deleted?)
      if self.deleted?
        self.events.each do |e|
          e.unlinkable = true
          e.save
        end
      end
    end
  end

  def sweep_unlinkable_events_for_hard_delete
    self.events.each do |e|
      e.unlinkable = true
      e.save
    end
  end
end
