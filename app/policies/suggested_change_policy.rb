class SuggestedChangePolicy < Struct.new(:user, :suggested_change)
  def create?
    user
  end

  def update?
    suggested_change.user == user ||
      user.is_admin? ||
      user.is_moderator?
  end

  def apply?
    user.is_admin? || user.is_moderator?
  end
end
