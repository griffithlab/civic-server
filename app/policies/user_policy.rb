class UserPolicy < Struct.new(:current_user, :target_user)
  def update?
    target_user == current_user || current_user.editor?
  end

  def destroy?
    target_user == current_user || current_user.editor?
  end
end
