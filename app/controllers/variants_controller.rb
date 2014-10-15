class VariantsController < ApplicationController
  skip_before_filter :ensure_signed_in, only: [:index]
  respond_to :json

  def index
    render json: GeneVariantsTable.new(view_context)
  end
end
