class SuggestedChangePolicy < Struct.new(:user, :suggested_change)
  def create?
    user
  end

  def update?
    suggested_change.user == user ||
      user.editor?
  end

  def accept?
    user.editor? || user.editor?
  end

  def reject?
    accept? || suggested_change.user == user
  end
end
