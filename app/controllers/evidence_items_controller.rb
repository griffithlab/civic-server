class EvidenceItemsController < ApplicationController
  include WithComment
  include WithSoftDeletion

  actions_without_auth :index, :show, :variant_index, :variant_group_index

  def index
    items = EvidenceItem.index_scope
      .order('evidence_items.id asc')
      .page(params[:page].to_i)
      .per(params[:count].to_i)

    render json: PaginatedCollectionPresenter.new(
      limit_query_by_status(items),
      request,
      EvidenceItemIndexPresenter,
      PaginationPresenter
    )
  end

  def variant_index
    items = EvidenceItem.index_scope
      .order('evidence_items.id asc')
      .page(params[:page].to_i)
      .per(params[:count].to_i)
      .joins(:variant)
      .where(variants: { id: params[:variant_id] })

    render json: PaginatedCollectionPresenter.new(
      limit_query_by_status(items),
      request,
      EvidenceItemIndexPresenter,
      PaginationPresenter
    )
  end

  def variant_group_index
    variants = EvidenceItem.variant_group_scope
      .order('evidence_items.id asc')
      .page(params[:page].to_i)
      .per(params[:count].to_i)
      .where(variant_groups: { id: params[:variant_group_id] })
      .uniq

    render json: PaginatedCollectionPresenter.new(
      variants,
      request,
      EvidenceItemIndexPresenter,
      PaginationPresenter
    )
  end
  def propose
    authorize EvidenceItem.new
    result = EvidenceItem.propose(
      evidence_item_params,
      relational_params,
      previous_suggestion_params[:source_suggestion_id],
      current_user
    )
    if result.succeeded?
      item = result.evidence_item
      attach_comment(item)
      render json: item.state_params
    else
      render json: { errors: result.errors }, status: :bad_request
    end
  end

  def accept
    update_status(:accept)
  end

  def reject
    update_status(:reject)
  end

  def show
    item = EvidenceItem.view_scope
      .find_by!(id: params[:id])

    render json: EvidenceItemDetailPresenter.new(item)
  end

  def destroy
    item = EvidenceItem.view_scope
      .find_by!(id: params[:id])
    authorize item
    soft_delete(item, EvidenceItemDetailPresenter)
  end

  private
  def limit_query_by_status(query)
    if params[:status].present?
      query.where(status: params[:status])
    else
      query
    end
  end

  def evidence_item_params
    params.permit(
      :text,
      :clinical_significance,
      :evidence_direction,
      :rating,
      :description,
      :evidence_type,
      :evidence_level,
      :variant_origin,
      :drug_interaction_type,
    )
  end

  def relational_params
    params.permit(
      :noDoid,
      :pubmed_id,
      :disease_name,
      :drugs,
      drugs: [],
      gene: [:id, :entrez_id],
      disease: [:id],
      variant: [:id, :name]
    )
  end

  def previous_suggestion_params
    params.permit(:source_suggestion_id)
  end

  def update_status(method)
    item = EvidenceItem.view_scope.find_by!(id: params[:evidence_item_id])
    authorize item
    result = item.send(method, current_user)
    if result.succeeded?
      render json: EvidenceItemDetailPresenter.new(result.evidence_item)
    else
      render json: { errors: result.errors }, status: :bad_request
    end
  end
end
