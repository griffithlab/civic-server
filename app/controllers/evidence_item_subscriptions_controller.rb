class EvidenceItemSubscriptionsController < SubscriptionsController
  private
  def subscribable
    EvidenceItem.find_by(id: params[:evidence_item_id])
  end
end
