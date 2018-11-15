class EvidenceItemModerationsController < ModerationsController
  private
  def moderated_object
    EvidenceItem.view_scope.find_by_id!(params[:evidence_item_id])
  end

  def moderation_params
    if params[:citation_id].present?
      params[:source] = params[:citation_id]
    end
    if params[:noDoid].present? and params[:disease_name].present? and params[:noDoid]
      proposed_name = Disease.capitalize_name(params[:disease_name])
      Disease.where(display_name: proposed_name, name: proposed_name).first_or_create
      params[:disease] = proposed_name
    elsif params[:disease].present?
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
