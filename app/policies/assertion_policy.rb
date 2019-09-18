class AssertionPolicy < Struct.new(:user, :assertion)
  include PolicyHelpers

  def update?
    editor_without_coi?(user)
  end

  def propose?
    user
  end

  def destroy?
    editor_without_coi?(user)
  end

  def accept?
    editor_without_coi?(user) && assertion.submitter != user
  end

  def reject?
    editor_without_coi?(user) || assertion.submitter == user
  end
end
