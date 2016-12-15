class BadgeClaimController < ApplicationController

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
