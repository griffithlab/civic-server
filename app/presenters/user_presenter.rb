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
        linkedin_profile: user.linkedin_profile,
        bio: user.bio,
        country: user.country,
        featured_expert: user.featured_expert,
        accepted_license: user.accepted_license,
        signup_complete: user.signup_complete,
        affiliation: user.affiliation,
        organization: user.organization ? OrganizationIndexPresenter.new(user.organization) : { },
        conflict_of_interest: ConflictOfInterestPresenter.new(user.most_recent_conflict_of_interest_statement)
      }.merge(additional_attributes)
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
