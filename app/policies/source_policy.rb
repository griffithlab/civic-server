class SourcePolicy < Struct.new(:user, :source)
  def create?
    user
  end

  def update?
    user
  end

  def update_source_suggestion?
    Role.user_is_at_least_a?(user, :editor)
  end
end
