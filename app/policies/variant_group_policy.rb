class VariantGroupPolicy < Struct.new(:user, :variant_group)
  def create?
    user.present?
  end

  def destroy?
    Role.user_is_at_least_a?(user, :editor)
  end
end
