class UserPresenter
  include Gravatarify::Base

  def initialize(user)
    @user = user
  end

  def as_json(options = {})
    if @user.nil?
      {
        username: 'Admin'
      }
    else
      {
        id: @user.id,
        email: @user.email,
        name: @user.name,
        username: @user.username,
        roles: @user.roles.map(&:name),
        avatar_url: gravatar_url(@user.email)
      }
    end
  end
end
