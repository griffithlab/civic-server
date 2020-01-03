class CloneSubscriptions < ApplicationJob
  attr_reader :from_user, :to_user

  def perform(from_user, to_user)
    @from_user = from_user
    @to_user = to_user

    ActiveRecord::Base.transaction do
      copy_subscriptions
    end
  end

  private
  def copy_subscriptions
    subscriptions_to_copy = from_user.subscriptions
    existing_subscriptions = to_user.subscriptions
      .map { |s| key_for_subscription(s) }
      .to_set


    subscriptions_to_copy.each do |sub|
      unless existing_subscriptions.include?(key_for_subscription(sub))
        new_sub = sub.dup
        new_sub.user = to_user
        new_sub.type = 'OnSiteSubscription'
        new_sub.save
        existing_subscriptions << key_for_subscription(new_sub)
      end
    end
  end

  def key_for_subscription(s)
    "#{s.subscribable_id}_#{s.subscribable_type}" 
  end
end