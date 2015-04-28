class GeneModerationsController < ModerationsController

  private
  def moderated_object
    Gene.find_by!(id: params[:gene_id])
  end

  def moderation_params
    params.permit(:name, :entrez_id, :description, :official_name, :clinical_description)
  end

  def presenter_class
    GenePresenter
  end

end