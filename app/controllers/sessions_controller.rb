class SessionsController < ApplicationController
  after_filter :set_csrf_cookie_for_ng, only: [:create, :destroy]

  def create
    auth_hash = request.env['omniauth.auth']
    authorization = Authorization.find_or_create_from_omniauth(auth_hash)

    if signed_in?
      if authorization.user == current_user
        redirect_to root_url, notice: 'Already linked that account!'
      else
        authorization.user = current_user
        authorization.save
        redirect_to root_url, notice: 'Successfully linked new account'
      end
    else
      if authorization.user.present?
        self.current_user = authorization.user
      else
        user = User.create_from_omniauth(auth_hash, authorization)
        user.save
        authorization.save
        self.current_user = user
      end
      redirect_to root_url, notice: 'Signed in!'
    end
  end

  def destroy
    self.current_user = nil
    redirect_to root_url
  end
end
