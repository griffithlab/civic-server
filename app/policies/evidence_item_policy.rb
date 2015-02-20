class EvidenceItemPolicy < Struct.new(:user, :variant)
  def update?
    user.is_admin?
  end

  def propose?
    user
  end
end
