class VariantGroupsController < ApplicationController
  include WithComment
  actions_without_auth :index, :show, :gene_index, :variant_index

  def index
    variant_groups = VariantGroup.index_scope
      .order('variant_groups.id asc')
      .page(params[:page].to_i)
      .per(params[:count].to_i)

      render json: PaginatedCollectionPresenter.new(
        variant_groups,
        request,
        VariantGroupIndexPresenter,
        PaginationPresenter
      )
  end

  def gene_index
    variant_groups = VariantGroup.joins(variants: [:gene, :evidence_items])
      .order('variant_groups.id asc')
      .page(params[:page].to_i)
      .per(params[:count].to_i)
      .where('genes.id' => params[:gene_id])
      .where('evidence_items.status' => 'accepted')
      .uniq

      render json: PaginatedCollectionPresenter.new(
        variant_groups,
        request,
        VariantGroupIndexPresenter,
        PaginationPresenter
      )
  end

  def variant_index
    variant_groups = VariantGroup.joins(variants: [:evidence_items])
      .order('variant_groups.id asc')
      .page(params[:page].to_i)
      .per(params[:count].to_i)
      .where('variants.id' => params[:variant_id])
      .where('evidence_items.status' => 'accepted')
      .uniq

      render json: PaginatedCollectionPresenter.new(
        variant_groups,
        request,
        VariantGroupIndexPresenter,
        PaginationPresenter
      )
  end

  def show
    variant_group = VariantGroup.view_scope.find(params[:id])
    render json: VariantGroupDetailPresenter.new(variant_group)
  end

  def create
    variants = Variant.where(id: variant_ids)
    if variants.present?
      (variant_group, status) = if v = VariantGroup.view_scope.find_by('variant_groups.name' => params[:name])
        [v, :conflict]
      else
        v = VariantGroup.new(variant_group_params)
        v.variants = variants
        v.save
        [v, :ok]
      end
      authorize variant_group
      render json: VariantGroupDetailPresenter.new(variant_group), status: status
    else
      authorize VariantGroup.new
      render json: {error: 'No valid variants found'}, status: :bad_request
    end
  end

  def destroy
    variant_group = VariantGroup.view_scope.find(params[:id])
    authorize variant_group
    soft_delete(VariantGroupDetailPresenter)
  end

  private
  def variant_group_params
    params.permit(:name, :description)
  end

  def variant_ids
    Array(params.permit(variants: [:id])[:variants]).map { |v| v[:id] }
  end
end
