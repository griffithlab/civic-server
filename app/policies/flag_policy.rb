class FlagPolicy < Struct.new(:user, :flag)
  def create?
    user
  end

  def update?
    flag.flagging_user == user || Role.user_is_at_least_a?(user, :editor)
  end
end
