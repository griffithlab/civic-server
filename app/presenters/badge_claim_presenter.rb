class BadgeClaimPresenter
  attr_reader :claim

  def initialize(claim)
    @claim = claim
  end

  def as_json(opt = {})
    {
        id: claim.id,
        badge: BadgePresenter.new(claim.badge),
        user: UserPresenter.new(claim.user)
    }
  end

end