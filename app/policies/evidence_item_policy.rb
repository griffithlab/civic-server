class EvidenceItemPolicy < Struct.new(:user, :variant)
  def update?
    user.is_admin?
  end

  def propose?
    user
  end

  def destroy?
   user.is_admin?
  end
end
