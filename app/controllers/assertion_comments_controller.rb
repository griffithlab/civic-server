class AssertionCommentsController < CommentsController
  private
  def commentable
    Assertion.find_by!(id: params[:assertion_id])
  end
end
