class VariantGroupModerationsController < ModerationsController
  private
  def moderated_object
    VariantGroup.find_by!(id: params[:variant_group_id])
  end

  def moderation_params
    params.permit(:name, :description)
  end

  def additional_moderation_params
    params.permit(variants: [])
  end

  def presenter_class
    VariantGroupPresenter
  end
end
