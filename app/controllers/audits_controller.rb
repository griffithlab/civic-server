class AuditsController < ApplicationController
  skip_before_filter :ensure_signed_in

  def index
    render json: audited_object.audits.eager_load(:user)
  end

  def show
    render json: audited_object.audits.where(id: params[:id])
  end

  def last
    render json: audited_object.audits.last
  end
end
