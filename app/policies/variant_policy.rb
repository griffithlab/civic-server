class VariantPolicy < Struct.new(:user, :variant)
  def update?
    Role.user_is_at_least_a?(user, :moderator)
  end

  def destroy?
    Role.user_is_at_least_a?(user, :moderator)
  end
end
