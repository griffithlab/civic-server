class VariantGroupPolicy < Struct.new(:user, :variant_group)
  include PolicyHelpers

  def create?
    user.present?
  end

  def destroy?
    editor_without_coi?(user)
  end
end
