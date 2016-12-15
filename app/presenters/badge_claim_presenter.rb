class BadgeClaimPresenter
  attr_reader :claim

  def initialize(claim)
    @claim = claim
  end

  def as_json(opt = {})
    {
        redemption_code: claim.redemption_code,
        badge: BadgePresenter.new(claim.badge),
        user: UserPresenter.new(claim.user),
        updated_at: claim.updated_at,
        created_at: claim.created_at
    }
  end

end