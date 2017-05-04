class OrganizationsController < ApplicationController
  actions_without_auth :index, :show, :events

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

  def events
    user_ids = Organization.find_by(params[:id]).users.pluck(:id)

    events = Event.order('events.id asc')
      .includes(:originating_user, :subject)
      .where(originating_user_id: user_ids)
      .page(params[:page])
      .per(params[:count])

    render json: PaginatedCollectionPresenter.new(
      events,
      request,
      EventPresenter,
      PaginationPresenter
    )
  end
end
