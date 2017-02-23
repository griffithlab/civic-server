class DomainExpertTagPolicy < Struct.new(:user, :tag)
  def create?
    user.present?
  end

  def destroy?
    user.present? &&
      (tag.user == user || Role.user_is_at_least_a?(user, :admin))
  end
end
