class BadgeClaimPolicy < Struct.new(:user, :claim)

  def create?
    Role.user_is_at_least_a?(user, :admin)
  end

  def delete?
    Role.user_is_at_least_a?(user, :admin)
  end

  def redeem?
    user
  end
end
