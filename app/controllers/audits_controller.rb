class AuditsController < ApplicationController
  actions_without_auth :index, :show, :last

  def index
    render json: audited_object.audits
                    .includes(:user)
                    .page(params[:page])
                    .per(params[:count])
                    .map { |a| AuditPresenter.new(a) }
  end

  def show
    render json: AuditPresenter.new(audited_object.audits.find_by!(id: params[:id]))
  end

  def last
    render json: AuditPresenter.new(audited_object.audits.last)
  end
end
