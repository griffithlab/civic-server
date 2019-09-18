class CommentPolicy < Struct.new(:user, :comment)
  include PolicyHelpers

  def create?
    user
  end

  def update?
    editor_without_coi?(user) || user == comment.user
  end

  def destroy?
    update?
  end
end
