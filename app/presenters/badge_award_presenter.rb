class BadgeAwardPresenter
  attr_reader :award

  def initialize(award)
    @award = award
  end

  def as_json(opt = {})
    {
      name: award.badge.name,
      description: award.message,
      tier: award.tier,
      date_awarded: award.created_at,
      image_urls: image_urls,
      additional_fields: additional_fields
    }
  end

  private
  def image_urls
    if urls = (award.badge.additional_fields || {})['image_urls']
      urls
    else
      tier = award.tier
      badge_sizes.each_with_object({}) do |size, h|
        h["x#{size}"] = "/badges/badge_#{tier}_#{size}x#{size}.png"
      end
    end
  end

  def additional_fields
    (award.badge.additional_fields || {}).except('image_urls')
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
