class EvidenceItemsController < ApplicationController
  include WithComment
  include WithSoftDeletion

  actions_without_auth :index, :show, :variant_index, :variant_group_index, :datatable

  def index
    items = EvidenceItem.index_scope
      .order('evidence_items.id asc')
      .page(params[:page])
      .per(params[:count])

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
      .page(params[:page])
      .per(params[:count])
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
      .page(params[:page])
      .per(params[:count])
      .where(variant_groups: { id: params[:variant_group_id] })
      .distinct

    render json: PaginatedCollectionPresenter.new(
      variants,
      request,
      EvidenceItemWithStateParamsPresenter,
      PaginationPresenter
    )
  end
  def propose
    authorize EvidenceItem.new
    organization = Organization.find(params[:organization][:id])
    result = EvidenceItem.propose(
      evidence_item_params,
      relational_params,
      previous_suggestion_params[:source_suggestion_id],
      current_user,
      organization
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

  def datatable
    render json: EvidenceItemBrowseTable.new(view_context)
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
      :disease_name,
      :drugs,
      source: [:source_type, :citation_id],
      drugs: [],
      gene: [:id, :entrez_id],
      disease: [:id],
      variant: [:id, :name],
      phenotypes: []
    )
  end

  def previous_suggestion_params
    params.permit(:source_suggestion_id)
  end

  def update_status(method)
    item = EvidenceItem.view_scope.find_by!(id: params[:evidence_item_id])
    authorize item
    organization = Organization.find(params[:organization][:id])
    result = item.send(method, current_user, organization)
    if result.succeeded?
      render json: EvidenceItemDetailPresenter.new(result.evidence_item)
    else
      render json: { errors: result.errors }, status: :bad_request
    end
  end
end
