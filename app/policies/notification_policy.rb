class NotificationPolicy < Struct.new(:user, :notification)
  def update?
    Role.user_is_at_least_a?(user, :admin) || notification.notified_user.id == user.id
  end
end
