class SubscriptionPolicy < Struct.new(:user, :subscription)
  def index?
    user.present?
  end

  def show?
    user.present? &&
      (subscription.user == user || Role.user_is_at_least_a?(user, :admin))
  end

  def create?
    user.present?
  end

  def destroy?
    user.present? &&
      (subscription.user == user || Role.user_is_at_least_a?(user, :admin))
  end
end
