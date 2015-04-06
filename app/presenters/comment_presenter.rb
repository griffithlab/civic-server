class CommentPresenter
  def initialize(comment)
    @comment = comment
  end

  def as_json(options = {})
    {
      id: @comment.id,
      text: @comment.text,
      title: @comment.title,
      created_at: @comment.created_at,
      updated_at: @comment.updated_at,
      user: UserPresenter.new(@comment.user)
    }
  end
end