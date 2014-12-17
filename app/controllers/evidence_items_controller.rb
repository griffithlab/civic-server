class EvidenceItemsController < ApplicationController
  skip_before_filter :ensure_signed_in, only: [:index, :show]

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

end
