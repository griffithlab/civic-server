class ProteinFunctionsController < ApplicationController
  skip_before_filter :ensure_signed_in, only: [:index]

  def index
    render json: ProteinFunction.all.map { |p| ProteinFunctionPresenter.new(p) }
  end
end
