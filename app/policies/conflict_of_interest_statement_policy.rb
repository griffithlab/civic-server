class ConflictOfInterestStatementPolicy < Struct.new(:user, :coi)

  def index?
    user
  end

  def create?
    user
  end
end
