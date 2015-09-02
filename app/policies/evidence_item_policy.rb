class EvidenceItemPolicy < Struct.new(:user, :variant)
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
    Role.user_is_at_least_a?(user, :editor)
  end
end
