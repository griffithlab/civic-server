class BadgeAwardPresenter
  attr_reader :badge_award

  def initialize(badge_award)
    @badge_award = badge_award
  end

  def as_json(opt = {})
    {
      date_awarded: badge_award.created_at,
      badge: BadgePresenter.new(badge_award.badge),
      user: UserPresenter.new(badge_award.user)
    }
  end
end
