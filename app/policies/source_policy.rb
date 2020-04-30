class SourcePolicy < Struct.new(:user, :source)
  include PolicyHelpers

  def create?
    user && belongs_to_action_organization?(user)
  end

  def update?
    user
  end
end
