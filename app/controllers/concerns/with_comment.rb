module WithComment
  extend ActiveSupport::Concern

  def comment_params
    if p = params[:comment]
      p.permit(:title, :text)
    else
      params.permit(:title, :text)
    end
  end

  def attach_comment(obj, event)
    if comment_params.present?
      c = Comment.create!(comment_params.merge({ user: current_user, commentable: obj }))
      NotifyMentioned.perform_later(c.text, current_user, event)
    end
  end
end
