class EventsController < ApplicationController
  actions_without_auth :index

  def index
    events = Event.includes(:originating_user, :subject)
      .page(params[:page])
      .per(params[:count])
      .order('created_at DESC')

    render json: EventsPresenter.new(events)
  end
end
