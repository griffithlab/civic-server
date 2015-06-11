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
        role: @user.role,
        avatar_url: gravatar_url(@user.email),
        area_of_expertise: @user.area_of_expertise,
      }
    end
  end
end
