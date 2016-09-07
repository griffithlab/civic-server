class ServerController < ApplicationController
  actions_without_auth :show

  def show
    render json: ServerInfoPresenter.new
  end
end
