class OrganizationsController < ApplicationController
  actions_without_auth :index, :show, :events, :stats, :evidence_items

  def index
    render json: OrganizationBrowseTable.new(view_context)
  end

  def show
    org = Organization.includes(:users).find(params[:id])
    render json: OrganizationDetailPresenter.new(org)
  end

  def stats
    org = Organization.find(params[:organization_id])
    stats = Rails.cache.fetch("org_stats_#{org.id}", expires_in: 5.minutes) do
      Hash[org.stats_hash]
    end
    render json: stats
  end

  def events
    events = Event.order('events.id DESC')
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

  def evidence_items
    evidence_items = EvidenceItem.order('evidence_items.id DESC')
      .index_scope
      .eager_load(:submitter)
      .where('users.id' => user_ids)
      .page(params[:page])
      .per(params[:count])

    render json: PaginatedCollectionPresenter.new(
      evidence_items,
      request,
      EvidenceItemIndexPresenter,
      PaginationPresenter
    )
  end

  def user_ids
    Organization.find_by!(id: params[:organization_id]).users.pluck(:id)
  end
end
