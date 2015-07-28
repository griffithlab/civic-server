class SuggestedChangePolicy < Struct.new(:user, :suggested_change)
  def create?
    user
  end

  def update?
    suggested_change.user == user ||
      Role.user_is_at_least_a?(user, :editor)
  end

  def accept?
    user.editor? || Role.user_is_at_least_a?(user, :editor)
  end

  def reject?
    accept? || suggested_change.user == user
  end
end
