class VariantGroupPolicy < Struct.new(:user, :variant_group)
  def update?
    user.is_admin?
  end

  def destroy?
    user.is_admin?
  end
end
