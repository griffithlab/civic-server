class NotifyMentioned < ActiveJob::Base
  def perform(comment, event)
    ActiveRecord::Base.transaction do
      mentioned_users_result = comment.extract_mentions
      mentioned_roles_result = comment.extract_role_mentions

      users_to_notify = mentioned_users_result.mentioned_users.to_a +
       User.where(role: mentioned_roles_result.mentioned_role_values)

      users_to_notify.uniq.each do |user|
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
