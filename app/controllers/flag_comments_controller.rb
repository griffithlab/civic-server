class FlagCommentsController < CommentsController
  def commentable
    Flag.find_by!(id: params[:flag_id])
  end
end
