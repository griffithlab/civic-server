class AssertionModerationsController < ModerationsController
  private
  def moderated_object
    Assertion.view_scope.find_by!(id: params[:assertion_id])
  end

  def moderation_params
    if params[:disease].present?
      params[:disease] = params[:disease][:name]
    end
    if params[:gene].present?
      params[:gene] = params[:gene][:name]
    end
    if params[:variant].present?
      params[:variant] = params[:variant][:name]
    end

    params.permit(:summary, :description, :gene, :variant, :disease, :nccn_guideline, :nccn_guideline_version, :evidence_type, :evidence_direction, :amp_level, :clinical_significance, :drug_interaction_type, :fda_regulatory_approval, :fda_companion_test)
  end

  def additional_moderation_params
    [:evidence_items, :acmg_codes, :drugs, :phenotypes].each do |p|
      params[p] ||= [] if params.has_key?(:p)
    end
    params.permit(evidence_items: [], acmg_codes: [], drugs: [], phenotypes: [])
  end

  def presenter_class
    AssertionDetailPresenter
  end
end
