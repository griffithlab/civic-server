class TrophyCasePresenter
  attr_reader :badge_awards

  def initialize(user)
    @badge_awards = user.badge_awards
  end

  def as_json(opts = {})
    {
      badges: badge_awards.map { |ba| BadgeAwardPresenter.new(ba) }
    }
  end
end
