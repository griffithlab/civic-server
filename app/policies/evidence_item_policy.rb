class EvidenceItemPolicy < Struct.new(:user, :evidence_item)
  def update?
    Role.user_is_at_least_a?(user, :moderator)
  end

  def propose?
    user
  end

  def destroy?
    Role.user_is_at_least_a?(user, :moderator)
  end

  def accept?
    if evidence_item.submitter == user
      Role.user_is_at_least_a?(user, :admin)
    else
      Role.user_is_at_least_a?(user, :moderator)
    end
  end

  def reject?
    Role.user_is_at_least_a?(user, :moderator)
  end
end
