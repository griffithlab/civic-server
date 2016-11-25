class TrophyCasePresenter
  attr_reader :user_badges

  def initialize(user)
    @user_badges = user.badges_users
  end

  def as_json(opts = {})
    {
      badges: badges
    }
  end

  private
  def badges
    user_badges.map do |ub|
      {
        date_awarded: ub.created_at
      }.merge(BadgePresenter.new(ub.badge).as_json)
    end
  end
end
