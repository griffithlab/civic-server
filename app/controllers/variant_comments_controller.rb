class VariantCommentsController < CommentsController
  private
  def commentable
    Variant.find_by!(id: params[:variant_id])
  end
end
