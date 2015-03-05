class NotifySubscribers < ActiveJob::Base
  def perform(subscribable, initiator)
    message = format_message(subscribable, initiator)
    subscriptions_by_user = populate_user_hash(Hash.new, subscribable)
    subscriptions_by_user.values.each do |subscription|
      subscription.send_notification(message)
    end
  end

  private
  def format_message(subscribable, initiator)
    sprintf('The %s %s has new content from %s',
            "#{subscribable.class}".underscore.humanize,
            subscribable.subscribable_name,
            initiator.username)
  end

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
