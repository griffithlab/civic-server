class EvidenceItemModerationsController < ModerationsController
  private
  def moderated_object
    EvidenceItem.view_scope.find_by_id!(params[:evidence_item_id])
  end

  def moderation_params
    if params[:pubmed_id].present?
      params[:source] = params[:pubmed_id]
    end
    if params[:disease].present?
      params[:disease] = params[:disease][:name]
    end

    params.permit(:clinical_significance, :evidence_direction, :text, :description, :rating,
     :evidence_level, :variant_origin, :evidence_direction, :source, :evidence_type, :drug_interaction_type, :disease)
  end

  def additional_moderation_params
    params[:drugs] ||= [] if params.has_key?(:drugs)
    params.permit(drugs: [])
  end

  def presenter_class
   EvidenceItemPresenter
  end
end