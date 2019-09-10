class EvidenceItemPolicy < Struct.new(:user, :evidence_item)
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
    editor_without_coi?(user) && evidence_item.submitter != user
  end

  def reject?
    editor_without_coi?(user) || evidence_item.submitter == user
  end
end
