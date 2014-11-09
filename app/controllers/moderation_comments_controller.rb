class ModerationCommentsController < CommentsController
  def commentable
    SuggestedChange.find_by!(id: params[:suggested_change_id])
  end
end
