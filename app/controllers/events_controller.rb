class EventsController < ApplicationController
  include WithSorting

  actions_without_auth :index, :scoped_index

  def index
    events = Event.includes(:originating_user, :subject)
      .page(params[:page])
      .per(params[:count])
      .order("events.created_at #{sort_direction('timestamp')}")

    render json: EventsPresenter.new(events)
  end

  def scoped_index
    event_feed = ScopedEventFeed.new(
      params[:root_type],
      params[:root_id],
      params[:page].to_i,
      params[:count].to_i
    )

    render json: ScopedEventsPresenter.new(
      event_feed,
      request
    )
  end

  private
  def sort_clause
    if params["sorting"].blank?
      'DESC'
    elsif params["sorting"]["timestamp"].present? && params["sorting"]["timestamp"].upcase == 'DESC'
      'DESC'
    else
      'ASC'
    end
  end
end
