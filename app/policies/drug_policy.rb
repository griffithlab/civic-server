class DrugPolicy < Struct.new(:user, :drug)
  def create?
    user
  end
end
