class UserMinimalPresenter
  include Gravatarify::Base
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def as_json(options = {})
    if user.nil?
      {
        username: 'Admin'
      }
    else
      {
        id: user.id,
        display_name: user.display_name,
        avatars: avatars,
        url: user.url,
      }
    end
  end

  private
  def avatars
    if user.profile_image_file_name.present?
      user.profile_image.styles.keys.each_with_object({}) do |style, h|
        h[style] = user.profile_image.url(style)
      end
    else
      value = user.email.present? ? user.email : user.display_name
      {
        'x128' => gravatar_url(value, size: 128),
        'x64' => gravatar_url(value, size: 64),
        'x32' => gravatar_url(value, size: 32),
        'x14' => gravatar_url(value, size: 14)
      }
    end
  end
end
