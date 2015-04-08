class VariantGroupCommentsController < CommentsController
  private
  def commentable
    VariantGroup.find_by!(id: params[:variant_group_id])
  end
end
