class GenePolicy < Struct.new(:user, :gene)
  def create?
    user
  end

  def update?
   user.editor?
  end

  def destroy?
   user.editor?
  end
end
