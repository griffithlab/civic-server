class DomainExpertTagPolicy < Struct.new(:user, :tag)
  def create?
    user.present?
  end

  def destroy?
    user.present? &&
      (tag.user.id == user.id || Role.user_is_at_least_a?(user, :admin))
  end
end
