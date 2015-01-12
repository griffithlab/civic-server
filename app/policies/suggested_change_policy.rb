class SuggestedChangePolicy < Struct.new(:user, :suggested_change)
  def create?
    user
  end

  def update?
    suggested_change.user == user ||
      user.is_admin? ||
      user.is_moderator?
  end

  def accept?
    user.is_admin? || user.is_moderator?
  end
end
