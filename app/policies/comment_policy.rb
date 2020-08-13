class CommentPolicy < Struct.new(:user, :comment)
  include PolicyHelpers

  def create?
    user && belongs_to_action_organization?(user)
  end

  def update?
    editor_without_coi?(user) || user.id == comment.user.id
  end

  def destroy?
    update?
  end
end
