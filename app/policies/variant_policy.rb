class VariantPolicy < Struct.new(:user, :variant)
  include PolicyHelpers

  def update?
    editor_without_coi?(user)
  end

  def destroy?
    editor_without_coi?(user)
  end
end
