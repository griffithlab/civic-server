class PathwaysController < ApplicationController
  skip_before_filter :ensure_signed_in, only: [:index]

  def index
    render json: Pathway.all.map { |p| PathwayPresenter.new(p) }
  end
end
