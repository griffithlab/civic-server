class CategoriesController < ApplicationController
  skip_before_filter :ensure_signed_in, only: [:index]

  def index
    render json: Category.all.map { |p| CategoryPresenter.new(p) }
  end
end
