class EvidenceItemPolicy < Struct.new(:user, :variant)
  def update?
    user.editor?
  end

  def propose?
    user
  end

  def destroy?
   user.editor?
  end
end
