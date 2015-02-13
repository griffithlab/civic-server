class EvidenceItemsController < ApplicationController
  @actions_without_auth = [:index, :show]
  skip_before_filter :ensure_signed_in, only: @actions_without_auth
  after_action :verify_authorized, except: @actions_without_auth

  def index
    items = EvidenceItem.joins(variant: [:gene])
      .view_scope
      .where(variants: { name: params[:variant_id] }, genes: { entrez_id: params[:gene_id] })

    render json: items.map { |item| EvidenceItemPresenter.new(item) }
  end

  def show
    item = EvidenceItem.joins(variant: [:gene])
      .view_scope
      .find_by(id: params[:id], variants: { id: params[:variant_id] }, genes: { entrez_id: params[:gene_id] })

    render json: EvidenceItemPresenter.new(item)
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
    params.permit(:text, :clinical_significance, :evidence_direction)
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
