class CommentsController < ApplicationController
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
    status = if comment.save
      :created
    else
      :unprocessable_entity
    end
    render json: CommentPresenter.new(comment), status: status
  end

  def update
    comment = Comment.find!(params[:id])
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
  def comment_params
    params.permit(:title, :comment)
  end
end
