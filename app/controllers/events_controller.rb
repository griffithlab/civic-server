class EventsController < ApplicationController
  actions_without_auth :index

  def index
    events = Event.includes(:originating_user, :subject)
      .page(params[:page])
      .per(params[:count])
      .order("events.created_at #{sort_clause}")

    render json: EventsPresenter.new(events)
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
