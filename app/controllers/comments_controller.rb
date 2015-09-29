class CommentsController < ApplicationController
  include WithComment
  skip_before_filter :ensure_signed_in, only: [:index, :show]

  def index
    render json: commentable.comments
      .page(params[:page].to_i)
      .per(params[:count].to_i)
      .map { |c| CommentPresenter.new(c) }
  end

  def show
    render json: CommentPresenter.new(Comment.find_by_id!(params[:id]))
  end

  def create
    comment = Comment.new(comment_params)
    comment.commentable = commentable
    comment.user = current_user
    status = if comment.save
      create_event(comment)
      :created
    else
      :unprocessable_entity
    end
    render json: CommentPresenter.new(comment), status: status
  end

  def update
    comment = Comment.find_by!(id: params[:id])
    status = if comment.update_attributes(comment_params)
               :ok
              else
               :unprocessable_entity
              end
    render json: CommentPresenter.new(comment), status: status
  end

  def destroy
    comment = Comment.find(params[:id])
    if comment.destroy
      head :no_content, status: :no_content
    else
      render json: CommentPresenter.new(comment), status: :unprocessable_entity
    end
  end

  private
  def create_event(comment)
    commentable_key = "#{comment.commentable_type.underscore}_id".to_sym
    Event.create(
      action: 'commented',
      originating_user: current_user,
      subject: commentable,
      state_params: { comment_id: comment.id, commentable_key => commentable.id }
    )
  end
end
