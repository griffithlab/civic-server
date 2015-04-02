class VariantGroupsController < ApplicationController
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
      .where('genes.entrez_id' => params[:gene_id])
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
    render json: VariantGroupPresenter.new(variant_group, true)
  end
end
