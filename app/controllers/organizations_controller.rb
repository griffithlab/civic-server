class OrganizationsController < ApplicationController
  actions_without_auth :index, :show

  def index
    orgs = Organization.order('organizations.id asc')
      .page(params[:page])
      .per(params[:count])

    render json: PaginatedCollectionPresenter.new(
      orgs,
      request,
      OrganizationIndexPresenter,
      PaginationPresenter
    )
  end

  def show
    org = Organization.includes(:users).find(params[:id])
    render json: OrganizationDetailPresenter.new(org)
  end
end
