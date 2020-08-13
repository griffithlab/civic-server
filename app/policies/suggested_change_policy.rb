class SuggestedChangePolicy < Struct.new(:user, :suggested_change)
  include PolicyHelpers

  def create?
    user && belongs_to_action_organization?(user)
  end

  def update?
    (suggested_change.user.id == user.id ||
      editor_without_coi?(user)) && belongs_to_action_organization?(user)
  end

  def accept?
    editor_without_coi?(user) && suggested_change.user.id != user.id && belongs_to_action_organization?(user)
  end

  def reject?
    accept? || suggested_change.user.id == user.id && belongs_to_action_organization?(user)
  end
end
