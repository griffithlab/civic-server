class VariantsController < ApplicationController
  skip_before_filter :ensure_signed_in, only: [:index, :typeahead_results]
  respond_to :json

  def index
    render json: GeneVariantsTable.new(view_context)
  end

  def typeahead_results
    render json: VariantTypeaheadResultsPresenter.new(view_context)
  end
end
