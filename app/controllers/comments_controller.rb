class CommentsController < ApplicationController
  include WithComment
  actions_without_auth :index, :show

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
    authorize Comment.new
    result = Comment.add(comment_params, current_user, commentable)
    if result.succeeded?
      render json: CommentPresenter.new(result.comment), status: :ok
    else
      render json: { errors: result.errors }, status: :bad_request
    end
  end

  def update
    comment = Comment.find_by!(id: params[:id])
    authorize comment
    status = if comment.update_attributes(comment_params)
               :ok
              else
               :unprocessable_entity
              end
    render json: CommentPresenter.new(comment), status: status
  end

  def destroy
    comment = Comment.find(params[:id])
    authorize comment
    if comment.destroy
      render json: {}, status: :no_content
    else
      render json: CommentPresenter.new(comment), status: :unprocessable_entity
    end
  end
end
