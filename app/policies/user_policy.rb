class UserPolicy < Struct.new(:current_user, :target_user)
  def update?
    target_user == current_user || Role.user_is_at_least_a?(user, :admin)
  end

  def destroy?
    target_user == current_user || Role.user_is_at_least_a?(user, :admin)
  end
end
