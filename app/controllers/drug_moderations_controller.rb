class DrugModerationsController < ModerationsController

  private
  def moderated_object
    Drug.find_by!(id: params[:drug_id])
  end

  def moderation_params
    params.permit(:name, :id, :pubchem_id)
  end

  def additional_moderation_params
    params[:sources] ||= [] if params.has_key?(:sources)
    params.permit(sources: [])
  end

  def presenter_class
    DrugPresenter
  end

end
