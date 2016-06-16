class VariantTypesController < ApplicationController

  actions_without_auth :index, :relationships

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

  def relationships
    variant = Variant.eager_load(:variant_types)
      .find(params[:variant_id])

    new_vt = VariantType.find(params[:variant_type_id])

    relationships = variant.variant_types.map do |existing_vt|
      {
        variant_type: VariantTypePresenter.new(existing_vt),
        relationship: existing_vt.relationship_with(new_vt)
      }
    end

    render json: relationships
  end
end
