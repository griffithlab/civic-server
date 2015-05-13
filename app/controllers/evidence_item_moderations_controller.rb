class EvidenceItemModerationsController < ModerationsController
  private
  def moderated_object
    EvidenceItem.view_scope.find_by_id!(params[:evidence_item_id])
  end

  def moderation_params
    params.permit(:clinical_significance, :evidence_direction, :text, :description, :rating,
     :evidence_level, :variant_origin, :evidence_direction, :source)
    #:pubmed_id
  end

  def presenter_class
   EvidenceItemPresenter
  end
end