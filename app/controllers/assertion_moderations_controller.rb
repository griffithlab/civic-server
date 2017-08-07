class AssertionModerationsController < ModerationsController
  private
  def moderated_object
    Assertion.find_by!(id: params[:assertion_id])
  end

  def moderation_params
    params.permit(:description, :fda_approved, :fda_approval_information, :nccn_guideline)
  end

  def additional_moderation_params
    [:evidence_items, :acmg_codes].each do |p|
      params[p] ||= [] if params.has_key?(:p)
    end
    params.permit(evidence_items: [], acmg_codes: [])
  end

  def presenter_class
    AssertionDetailPresenter
  end
end
