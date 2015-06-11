class VariantGroupPolicy < Struct.new(:user, :variant_group)
  def update?
    user.editor?
  end

  def destroy?
    user.editor?
  end
end
