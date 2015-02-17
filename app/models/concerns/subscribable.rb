module Subscribable
  extend ActiveSupport::Concern
  included do
    has_many :subscriptions, as: :subscribable
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

  def subscribable_name
    raise 'Must implement #subscribable_name in Subscribables!'
  end
end
