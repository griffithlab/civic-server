class SourceCommentsController < CommentsController
  private
  def commentable
    Source.find_by!(id: params[:source_id])
  end
end
