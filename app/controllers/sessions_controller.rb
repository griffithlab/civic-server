class SessionsController < ApplicationController
  skip_before_filter :ensure_signed_in, only: [:create, :show]

  def show
    if signed_in?
      render json: UserPresenter.new(
        current_user,
        unread_notifications: Notification.unread_count_for_user_by_type(current_user)
      )
    else
      head :not_found
    end
  end

  def create
    auth_hash = request.env['omniauth.auth']
    authorization = Authorization.find_or_create_from_omniauth(auth_hash)
    redirect_path = get_redirect_path

    if signed_in?
      if authorization.user == current_user
        redirect_to redirect_path, notice: 'Already linked that account!'
      else
        authorization.user = current_user
        authorization.save
        redirect_to redirect_path, notice: 'Successfully linked new account'
      end
    else
      if authorization.user.present?
        sign_in(authorization.user)
      else
        user = User.create_from_omniauth(auth_hash, authorization)
        user.save
        authorization.save
        sign_in(user)
      end
      redirect_to redirect_path, notice: 'Signed in!'
    end
  end

  def destroy
    sign_out
    head :no_content, status: :success
  end

  private
  def get_redirect_path
    if origin = request.env['omniauth.origin']
      origin
    else
      root_url
    end
  end
end
