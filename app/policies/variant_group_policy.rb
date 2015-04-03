class VariantGroupPolicy < Struct.new(:user, :variant_group)
  def update?
    user.is_admin?
  end
end
