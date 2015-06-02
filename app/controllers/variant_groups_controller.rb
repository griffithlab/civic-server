class VariantGroupsController < ApplicationController
  include WithComment
  actions_without_auth :index, :show, :gene_index, :variant_index

  def index
    variant_groups = VariantGroup.page(params[:page].to_i)
      .per(params[:count].to_i)
      .map { |v| VariantGroupPresenter.new(v) }

      render json: variant_groups
  end

  def gene_index
    variant_groups = VariantGroup.joins(variants: [:gene])
      .page(params[:page].to_i)
      .per(params[:count].to_i)
      .where('genes.id' => params[:gene_id])
      .uniq
      .map { |v| VariantGroupPresenter.new(v) }

      render json: variant_groups
  end

  def variant_index
    variant_groups = VariantGroup.joins(:variants)
      .page(params[:page].to_i)
      .per(params[:count].to_i)
      .where('variants.id' => params[:variant_id])
      .uniq
      .map { |v| VariantGroupPresenter.new(v) }

      render json: variant_groups
  end

  def show
    variant_group = VariantGroup.view_scope.find(params[:id])
    render json: VariantGroupPresenter.new(variant_group)
  end

  def update
    variant_group = VariantGroup.view_scope.find_by!(id: params[:id])
    authorize variant_group
    status = if variant_group.update_attributes(variant_group_params)
               :ok
             else
               :unprocessable_entity
             end
    attach_comment(variant_group)

    render json: VariantGroupPresenter.new(variant_group), status: status
  end

  def destroy
    variant_group = VariantGroup.view_scope.find(params[:id])
    authorize variant_group
    soft_delete(VariantGroupPresenter)
  end

  def variant_group_params
    params.permit(:name, :description)
  end
end
