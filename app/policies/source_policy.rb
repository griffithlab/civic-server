class SourcePolicy < Struct.new(:user, :source)
  def create?
    user && belongs_to_acting_as_organization?(user)
  end

  def update?
    user
  end
end
