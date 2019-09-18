class SuggestedChangePolicy < Struct.new(:user, :suggested_change)
  include PolicyHelpers

  def create?
    user
  end

  def update?
    suggested_change.user == user ||
      editor_without_coi?(user)
  end

  def accept?
    editor_without_coi?(user) && suggested_change.user != user
  end

  def reject?
    accept? || suggested_change.user == user
  end
end
