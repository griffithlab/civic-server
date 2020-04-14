class SuggestedChangePolicy < Struct.new(:user, :suggested_change)
  include PolicyHelpers

  def create?
    user && belongs_to_acting_as_organization?(user)
  end

  def update?
    (suggested_change.user == user ||
      editor_without_coi?(user)) && belongs_to_acting_as_organization?(user)
  end

  def accept?
    editor_without_coi?(user) && suggested_change.user != user && belongs_to_acting_as_organization?(user)
  end

  def reject?
    accept? || suggested_change.user == user && belongs_to_acting_as_organization?(user)
  end
end
