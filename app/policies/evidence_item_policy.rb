class EvidenceItemPolicy < Struct.new(:user, :variant)
  def update?
    user.is_admin?
  end
end
