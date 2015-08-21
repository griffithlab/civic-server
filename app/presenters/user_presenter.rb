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
        avatars: avatars,
        area_of_expertise: @user.area_of_expertise,
      }
    end
  end

  private
  def avatars
    {
      'x128' => gravatar_url(@user.email, size: 128),
      'x64' => gravatar_url(@user.email, size: 64),
      'x32' => gravatar_url(@user.email, size: 32)
    }
  end
end
