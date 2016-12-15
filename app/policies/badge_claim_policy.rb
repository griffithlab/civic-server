class BadgeClaimPolicy < Struct.new(:user, :claim)
  def redeem?
    user
  end
end
