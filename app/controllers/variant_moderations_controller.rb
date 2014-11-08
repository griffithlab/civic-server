class VariantModerationsController < ModerationsController

  private
  def moderated_object
    Variant.find_by!(name: params[:variant_id])
  end

  def moderation_params
    params.permit(:name, :description)
  end

  def presenter_class
  	VariantPresenter
  end

end
