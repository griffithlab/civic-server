class EventsController < ApplicationController
  actions_without_auth :index

  def index
    render json: Event.includes(:originating_user, :subject)
      .page(params[:page])
      .per(params[:count])
      .order('created_at DESC')
      .map { |e| EventPresenter.new(e) }
  end
end
