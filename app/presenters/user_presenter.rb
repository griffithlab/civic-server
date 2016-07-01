class UserPresenter
  include Gravatarify::Base
  attr_reader :user, :additional_attributes

  def initialize(user, additional_attributes = {})
    @user = user
    @additional_attributes = additional_attributes
  end

  def as_json(options = {})
    if user.nil?
      {
        username: 'Admin'
      }
    else
      {
        id: user.id,
        email: user.email,
        name: user.name,
        last_seen_at: user.last_seen_at,
        username: user.username,
        role: user.role,
        avatar_url: gravatar_url(user.email),
        avatars: avatars,
        area_of_expertise: user.area_of_expertise,
        orcid: user.orcid,
        display_name: user.display_name,
        created_at: user.created_at,
        url: user.url,
        twitter_handle: user.twitter_handle,
        facebook_profile: user.facebook_profile,
        linkedin_profile: user.linkedin_profile
      }.merge(additional_attributes)
    end
  end

  private
  def avatars
    value = user.email.present? ? user.email : user.display_name
    {
      'x128' => gravatar_url(value, size: 128),
      'x64' => gravatar_url(value, size: 64),
      'x32' => gravatar_url(value, size: 32),
      'x14' => gravatar_url(value, size: 14)
    }
  end
end
