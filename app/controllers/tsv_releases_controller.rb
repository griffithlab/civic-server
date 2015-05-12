class TsvReleasesController < ApplicationController
  actions_without_auth :nightly, :index

  def nightly
    render json: TsvReleasePresenter.new(TsvRelease.nightly)
  end

  def index
    render json: TsvRelease.page(params[:page])
      .per(params[:count])
      .to_a
      .unshift(TsvRelease.nightly)
      .map { |r| TsvReleasePresenter.new(r) }
  end
end
