class GenePolicy < Struct.new(:user, :gene)
  def create?
    user
  end

  def update?
   user.is_admin?
  end

  def destroy?
   user.is_admin?
  end
end
