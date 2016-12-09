class BadgeClaimController < ApplicationController

  def create
    @claim = BadgeClaim.new
  end

  def delete
    @claim = BadgeClaim.find(params[:id])
    @claim.delete
  end

  def redeem
    @claim = BadgeClaim.find(params[:id])
    authorize @claim
    result = @claim.redeem(current_user)
    if result.succeeded?
      render json: BadgeClaimPresenter.new(@claim), status: :ok
    else
      render json: { errors: result.errors }, status: :bad_request
    end
  end
end
