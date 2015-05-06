class VariantsController < ApplicationController
  include WithComment
  actions_without_auth :index, :show, :typeahead_results, :datatable, :gene_index, :entrez_gene_index

  def index
    variants = Variant.view_scope
      .page(params[:page].to_i)
      .per(params[:count].to_i)

    render json: variants.map { |v| VariantPresenter.new(v, true, true) }
  end

  def gene_index
    variants = Variant.view_scope
      .page(params[:page].to_i)
      .per(params[:count].to_i)
      .where(genes: { id: params[:gene_id] })

    render json: variants.map { |v| VariantPresenter.new(v, true, true) }
  end

  def entrez_gene_index
    puts params[:gene_entrez_id]
    variants = Variant.view_scope
      .page(params[:page].to_i)
      .per(params[:count].to_i)
      .where(genes: { entrez_id: params[:gene_entrez_id] })

    render json: variants.map { |v| VariantPresenter.new(v, true, true) }
  end


  def variant_group_index
    variants = Variant.view_scope
      .page(params[:page].to_i)
      .per(params[:count].to_i)
      .joins(:variant_groups)
      .where(variant_groups: { id: params[:variant_id] })
      .uniq

    render json: variants.map { |v| VariantPresenter.new(v, true, true) }
  end

  def show
    variant = Variant.view_scope.find_by!(id: params[:id])
    render json: VariantPresenter.new(variant, true, true, true)
  end

  def update
    variant = Variant.view_scope.find_by(id: params[:id])
    authorize variant
    status = if variant.update_attributes(variant_params)
               :ok
             else
               :unprocessable_entity
             end
    attach_comment(variant)
    render json: VariantPresenter.new(variant), status: status
  end

  def datatable
    render json: VariantBrowseTable.new(view_context)
  end

  def typeahead_results
    render json: VariantTypeaheadResultsPresenter.new(view_context)
  end

  private
  def variant_params
    params.permit(:name, :description)
  end
end
