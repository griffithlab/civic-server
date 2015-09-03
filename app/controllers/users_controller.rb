class UsersController < ApplicationController
  include WithSoftDeletion

  actions_without_auth :events, :show

  def show
    user = User.find_by(id: params[:id])
    render json: UserPresenter.new(user)
  end

  def events
    events = Event.where(originating_user: get_user)
      .includes(:subject)
      .page(params[:page])
      .per(params[:count])
      .order('created_at DESC')

    render json: events.map { |e| EventPresenter.new(e) }
  end

  def update
    user = get_user
    authorize user
    status = if user.update_attributes(user_attributes)
               :ok
             else
               :unprocessable_entity
             end
    render json: UserPresenter.new(user), status: status
  end

  def destroy
    user = get_user
    authorize user
    soft_delete(user, UserPresenter)
  end

  private
  def get_user
    if params[:user_id].present?
      User.find_by!(id: params[:user_id])
    else
      current_user
    end
  end

  def user_attributes
    params.permit(:email, :url, :username, :name, :area_of_expertise, :orcid)
  end
end
