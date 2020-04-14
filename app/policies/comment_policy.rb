class CommentPolicy < Struct.new(:user, :comment)
  include PolicyHelpers

  def create?
    user && belongs_to_acting_as_organization?(user)
  end

  def update?
    editor_without_coi?(user) || user == comment.user
  end

  def destroy?
    update?
  end
end
