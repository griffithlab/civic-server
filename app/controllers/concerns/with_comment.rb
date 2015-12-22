module WithComment
  extend ActiveSupport::Concern

  def comment_params
    if p = params[:comment]
      p.permit(:title, :text)
    else
      params.permit(:title, :text)
    end
  end

  def attach_comment(obj)
    if not comment_params.blank?
      Comment.create(comment_params.merge({ user: current_user, commentable: obj }))
    end
  end
end
