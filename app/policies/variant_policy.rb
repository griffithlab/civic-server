class VariantPolicy < Struct.new(:user, :variant)
  def update?
    user.editor?
  end

  def destroy?
   user.editor?
  end
end
