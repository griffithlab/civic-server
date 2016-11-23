class BadgePresenter
  attr_reader :badge

  def initialize(badge)
    @badge = badge
  end

  def as_json(opt = {})
    {
      name: badge.name,
      description: badge.description,
      tier: badge.tier,
      image_urls: image_urls,
      additional_fields: additional_fields
    }
  end

  private
  def image_urls
    if urls = (badge.additional_fields || {})['image_urls']
      urls
    else
      tier = badge.tier
      badge_sizes.each_with_object({}) do |size, h|
        h["x#{size}"] = "/badges/badge_#{tier}_#{size}x#{size}.png"
      end
    end
  end

  def additional_fields
    (badge.additional_fields || {}).except('image_urls')
  end

  def badge_sizes
    [
      '128',
      '64',
      '32',
      '15'
    ]
  end
end
