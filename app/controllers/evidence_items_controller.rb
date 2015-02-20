class EvidenceItemsController < ApplicationController
  @actions_without_auth = [:index, :show]
  skip_before_filter :ensure_signed_in, only: @actions_without_auth
  after_action :verify_authorized, except: @actions_without_auth

  def index
    items = EvidenceItem.joins(variant: [:gene])
      .view_scope
      .where(variants: { id: params[:variant_id] }, genes: { entrez_id: params[:gene_id] })
      .where(status: 'accepted')

    render json: items.map { |item| EvidenceItemPresenter.new(item) }
  end

  def propose
    item = EvidenceItem.propose_new(evidence_item_params, remote_evidence_item_params, foreign_key_params)
    authorize item
    attach_comment(item)
    render json: { message: 'Queued For Processing' }
  end

  def show
    item = EvidenceItem.joins(variant: [:gene])
      .view_scope
      .find_by(id: params[:id], variants: { id: params[:variant_id] }, genes: { entrez_id: params[:gene_id] })

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

  private
  def evidence_item_params
    params.permit(:text, :clinical_significance, :evidence_direction, :rating)
  end

  def remote_evidence_item_params
    params.permit(:doid, :pubchem_id, :pubmed_id, :entrez_id, :variant_name)
  end

  def foreign_key_params
    params.permit(:evidence_type, :evidence_level)
  end

  def comment_params
    params[:comment].permit(:text, :title)
  end

  def attach_comment(item)
    if not comment_params.blank?
      Comment.create(comment_params.merge({ user: current_user, commentable: item }))
    end
  end
end
