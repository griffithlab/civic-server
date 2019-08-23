class BadgeClaimController < ApplicationController
  actions_without_auth :index

  def index
    awarded_badges = BadgesUser.includes(:badge, :user)
      .order('badges_users.created_at desc')
      .page(params[:page])
      .per(params[:count])

    render json: PaginatedCollectionPresenter.new(
      awarded_badges,
      request,
      BadgeAwardPresenter,
      PaginationPresenter
    )
  end

  def redeem
    claim = BadgeClaim.find_by_redemption_code(params[:claim_id])
    authorize claim
    result = claim.redeem(current_user)
    if result.succeeded?
      render json: BadgeClaimPresenter.new(claim), status: :ok
    else
      render json: { errors: result.errors }, status: :bad_request
    end
  end

end
