module WithComment
  extend ActiveSupport::Concern

  def comment_params
    params[:comment].permit(:title, :text)
  end

  def attach_comment(obj)
    if not comment_params.blank?
      Comment.create(comment_params.merge({ user: current_user, commentable: obj }))
    end
  end
end
