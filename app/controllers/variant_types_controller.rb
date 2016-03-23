class VariantTypesController < ApplicationController

  actions_without_auth :index

  def index
    variant_types = FilterAdapters::VariantType.filter_query(
      VariantType.page(params[:page])
        .per(params[:count]),
      params
    )

    render json: PaginatedCollectionPresenter.new(
      variant_types,
      request,
      VariantTypePresenter,
      PaginationPresenter
    )
  end
end
