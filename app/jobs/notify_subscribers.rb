class NotifySubscribers < ActiveJob::Base
  def perform(subscribable, initiator)
    subscriptions_by_user = populate_user_hash(Hash.new, subscribable)
    subscriptions_by_user.values.each do |subscription|
      subscription.send_notification(message)
    end
  end

  private
  def populate_user_hash(user_hash, subscribable)
    user_hash.tap do |h|
      subscribable.subscriptions.each do |subscription|
        h[subscription.user_id] ||= subscription
      end
      subscribable.parent_subscribables.each do |parent|
        populate_user_hash(h, parent)
      end
    end
  end
end
