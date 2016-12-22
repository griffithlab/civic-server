class BadgeClaimController < ApplicationController
  actions_without_auth :index

  def index
    badge_claims = BadgeClaim.includes(:badge, :user)
      .order('badge_claims.created_at desc')
      .page(params[:page].to_i)
      .per(params[:count].to_i)

    render json: PaginatedCollectionPresenter.new(
      badge_claims,
      request,
      BadgeClaimPresenter,
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
