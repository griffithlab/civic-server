class VariantPolicy < Struct.new(:user, :variant)
  def update?
    user.is_admin?
  end

  def destroy?
   user.is_admin?
  end
end
