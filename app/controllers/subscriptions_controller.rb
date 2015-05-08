class SubscriptionsController < ApplicationController
  actions_without_auth :events

  def index
  end

  def create
  end

  def destroy
  end

  def events
    render json: Event.where(subject: subscribable)
      .includes(:originating_user)
      .page(params[:page])
      .per(params[:count])
      .map { |e| EventPresenter.new(e) }
  end

  private
  def subscribable
    raise 'Implement in subclass!'
  end
end
