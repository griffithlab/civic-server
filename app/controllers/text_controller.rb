class TextController < ApplicationController
  skip_before_filter :ensure_signed_in

  def show
   render json: { text: EXTERNAL_STRINGS[params[:term]] }
  end

  def index
    render json: EXTERNAL_STRINGS
  end
end
