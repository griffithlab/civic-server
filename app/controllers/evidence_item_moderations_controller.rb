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
     :evidence_level, :variant_origin, :evidence_direction, :source, :evidence_type, :drug_interaction_type, :disease, :variant)
  end

  def additional_moderation_params
    [:drugs, :phenotypes].each do |p|
      params[p] ||= [] if params.has_key?(:p)
    end
    params.permit(drugs: [], phenotypes: [])
  end

  def presenter_class
   EvidenceItemDetailPresenter
  end
end
