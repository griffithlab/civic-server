class SimpleIndexController < ApplicationController
  skip_before_filter :ensure_signed_in, only: [:index]

  def index
    render json: model_class.where('name ILIKE :filter', filter: "%#{params[:filter]}%")
                               .map { |p| presenter_class.new(p) }
  end

  private
  def presenter_class
    "#{model_class}Presenter".constantize
  end

  def model_class
    raise 'Implement #model_class in your subclass!'
  end
end
