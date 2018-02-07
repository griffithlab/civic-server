class EventsController < ApplicationController
  include WithSorting

  actions_without_auth :index

  def index
    events = Event.includes(:originating_user, :subject)
      .page(params[:page])
      .per(params[:count])
      .order("events.created_at #{sort_direction('timestamp')}")

    render json: EventsPresenter.new(events)
  end
end
