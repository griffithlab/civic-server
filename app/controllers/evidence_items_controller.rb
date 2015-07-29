class EvidenceItemsController < ApplicationController
  include WithComment
  include WithSoftDeletion

  actions_without_auth :index, :show, :variant_index, :variant_hgvs_index

  def index
    items = EvidenceItem.view_scope
      .page(params[:page].to_i)
      .per(params[:count].to_i)

    render json: limit_query_by_status(items).map { |item| EvidenceItemPresenter.new(item) }
  end

  def variant_index
    items = EvidenceItem.view_scope
      .page(params[:page].to_i)
      .per(params[:count].to_i)
      .joins(:variant)
      .where(variants: { id: params[:variant_id] })

    render json: limit_query_by_status(items).map { |item| EvidenceItemPresenter.new(item) }
  end

  def variant_hgvs_index
    json = EvidenceItem.where.not(:variant_hgvs => "N/A")
      .pluck(:variant_hgvs, :variant_id, :id).to_json
    render json: json
  end

  def propose
    item = EvidenceItem.propose_new(evidence_item_params, remote_evidence_item_params)
    authorize item
    attach_comment(item)
    render json: { message: 'Queued For Processing' }
  end

  def show
    item = EvidenceItem.view_scope
      .find_by!(id: params[:id])

    render json: EvidenceItemPresenter.new(item, true)
  end

  def update
    item = EvidenceItem.view_scope.find_by(id: params[:id])
    authorize item
    status = if item.update_attributes(evidence_item_params)
               :ok
             else
               :unprocessable_entity
             end
    attach_comment(item)
    render json: EvidenceItemPresenter.new(item), status: status
  end

  def destroy
    item = EvidenceItem.view_scope
      .find_by!(id: params[:id])
    authorize :item
    soft_delete(item, EvidenceItemPresenter)
  end

  private
  def limit_query_by_status(query)
    if params[:status].present?
      query.where(status: params[:status])
    else
      query.where(status: 'accepted')
    end
  end

  def evidence_item_params
    params.permit(:text, :clinical_significance, :evidence_direction, :rating, :description, :evidence_type, :evidence_level, :variant_origin, :drug_interaction_type)
  end

  def remote_evidence_item_params
    params.permit(:doid, :pubmed_id, :entrez_id, :variant_name, :disease, drugs: [])
  end
end
