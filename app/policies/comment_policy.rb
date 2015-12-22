class CommentPolicy < Struct.new(:user, :comment)
  def create?
    user
  end

  def update?
    Role.user_is_at_least_a?(user, :editor) || user == comment.user
  end

  def destroy?
    update?
  end
end
