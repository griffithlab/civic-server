class SourcePolicy < Struct.new(:user, :source)
  def create?
    user
  end
end
