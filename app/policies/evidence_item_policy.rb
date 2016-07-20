class EvidenceItemPolicy < Struct.new(:user, :evidence_item)
  def update?
    Role.user_is_at_least_a?(user, :editor)
  end

  def propose?
    user
  end

  def destroy?
    Role.user_is_at_least_a?(user, :editor)
  end

  def accept?
    Role.user_is_at_least_a?(user, :editor) && suggested_change.user != user
  end

  def reject?
    Role.user_is_at_least_a?(user, :editor)
  end
end
