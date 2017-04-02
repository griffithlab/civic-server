class FlagsController < ApplicationController
  include WithComment
  actions_without_auth :index, :show

  def show
    render json: FlagPresenter.new(flaggable.flags.find(params[:id]))
  end

  def index
    flags = flaggable.flags.index_scope
              .order('flags.id asc')
              .page(params[:page].to_i)
              .per(params[:count].to_i)
              .uniq

    render json: PaginatedCollectionPresenter.new(
      flags,
      request,
      FlagPresenter,
      PaginationPresenter
    )
  end

  def create
    authorize Flag
    result = Flag.create_for_flaggable(current_user, flaggable)
    if result.succeeded?
      attach_comment(result.flag)
      render json: FlagPresenter.new(result.flag), status: :ok
    else
      render json: { errors: result.errors }, status: :bad_request
    end
  end

  def update
    flag = Flag.find(params[:id])
    authorize flag
    if flag_params[:state] == 'resolved'
      result = Flag.resolve(current_user, flag)
      attach_comment(flag)
      render json: FlagPresenter.new(result.flag), status: :ok
    else
      render json: { errors: ['Can only resolve flags'] }, status: :bad_request
    end
  end

  private
  def flag_params
    params.permit(:state)
  end
end
