class NotifyMentioned < ActiveJob::Base
  def perform(comment, event)
    ActiveRecord::Base.transaction do
      result = comment.extract_mentions
      result.mentioned_users.each do |user|
        Notification.create(
          type: :mention,
          originating_user: comment.user,
          notified_user: user,
          event: event
        ) unless user == comment.user
      end
    end
  end
end
