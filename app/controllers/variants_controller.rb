class VariantsController < ApplicationController
  skip_before_filter :ensure_signed_in, only: [:index, :show, :typeahead_results, :datatable]
  respond_to :json

  def index
    variants = Variant.view_scope.where(genes: { entrez_id: params[:gene_id] })
    render json: variants.map { |v| VariantPresenter.new(v) }
  end

  def show
    variant = Variant.view_scope.find_by(id: params[:id], genes: { entrez_id: params[:gene_id] })
    render json: VariantPresenter.new(variant)
  end

  def datatable
    render json: GeneVariantsTable.new(view_context)
  end

  def typeahead_results
    render json: VariantTypeaheadResultsPresenter.new(view_context)
  end
end
