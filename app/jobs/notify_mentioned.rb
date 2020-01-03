class NotifyMentioned < ApplicationJob
  def perform(text, originating_user, event)
    ActiveRecord::Base.transaction do
      mentioned_users_result = Actions::ExtractMentions.new(text).perform
      mentioned_roles_result = Actions::ExtractRoleMentions.new(text).perform

      mentioned_by_name = mentioned_users_result.mentioned_users.to_a
      mentioned_by_role = if mentioned_roles_result.mentioned_role_values.present?
                              User.where("users.role >= ?", mentioned_roles_result.mentioned_role_values.max).to_a
                            else
                              []
                            end

      users_to_notify = mentioned_by_name + mentioned_by_role

      users_to_notify.uniq.each do |user|
        Notification.create(
          type: :mention,
          originating_user: originating_user,
          notified_user: user,
          event: event
        ) unless user == originating_user
      end
    end
  end
end
