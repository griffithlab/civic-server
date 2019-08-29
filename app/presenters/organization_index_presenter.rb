class OrganizationIndexPresenter
  attr_reader :org

  def initialize(org)
    @org = org
  end

  def as_json(opts = {})
    {
      id: org.id,
      name: org.name,
      url: org.url,
      description: org.description,
      profile_image: profile_image,
      parent: org.parent_id ? OrganizationIndexPresenter.new(org.parent) : { }
    }
  end

  private
  def profile_image
    if org.profile_image_file_name.present?
      org.profile_image.styles.keys.each_with_object({}) do |style, h|
        h[style] = org.profile_image.url(style)
      end
    else
      {}
    end
  end
end
