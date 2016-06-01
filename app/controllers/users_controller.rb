class UsersController < ApplicationController
  include WithSoftDeletion

  actions_without_auth :events, :show, :index, :username_suggestions

  def index
    render json: UserBrowseTable.new(view_context)
  end

  def show
    user = User.view_scope.find_by(id: params[:id])
    render json: UserDetailPresenter.new(user)
  end

  def events
    events = Event.where(originating_user: get_user)
      .includes(:subject)
      .page(params[:page])
      .per(params[:count])
      .order('created_at DESC')

    render json: EventsPresenter.new(events)
  end

  def update
    user = get_user
    authorize user
    status = if user.update_attributes(user_attributes)
               :ok
             else
               :unprocessable_entity
             end
    render json: UserDetailPresenter.new(user), status: status
  end

  def destroy
    user = get_user
    authorize user
    soft_delete(user, UserDetailPresenter)
  end

  def username_suggestions
    if (query = params[:username]).present?
      usernames = User.where('username ILIKE :query', query: "#{query}%")
        .limit(10)
      render json: usernames.map { |u| UserPresenter.new(u) }, status: :ok
    else
      render json: {}, status: :bad_request
    end
  end

  private
  def get_user
    if params[:user_id].present?
      User.view_scope.find_by!(id: params[:user_id])
    else
      current_user
    end
  end

  def user_attributes
    params.permit(:email, :url, :username, :name, :area_of_expertise, :orcid, :twitter_handle, :facebook_profile, :linkedin_profile)
  end
end
