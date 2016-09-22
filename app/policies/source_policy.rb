class SourcePolicy < Struct.new(:user, :source)
  def create?
    user
  end

  def update?
    user
  end
end
