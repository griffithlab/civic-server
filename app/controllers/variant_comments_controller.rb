class VariantCommentsController < CommentsController
  private
  def commentable
    Variant.find_by!(name: params[:variant_id])
  end
end
