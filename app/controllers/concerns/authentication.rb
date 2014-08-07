module Authentication
  extend ActiveSupport::Concern

  included do
    helper_method :current_user, :signed_in?, :signed_out?
    hide_action(
      :ensure_signed_in,
      :redirect_request,
      :current_user,
      :signed_in?,
      :signed_out?,
      :sign_in,
      :sign_out,
      :handle_unverified_request
    )
    before_filter :ensure_signed_in
  end

  def ensure_signed_in
    unless signed_in?
      respond_to do |format|
        format.json { head :unauthorized }
        format.html { redirect_request }
      end
    end
  end

  def redirect_request(flash_message = 'You must be signed in to access this resource!')
    flash[:notice] = flash_message
    redirect_to root_url
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def signed_in?
    !!current_user
  end

  def signed_out?
    !signed_in?
  end

  def sign_in(user)
    @current_user = user
    session[:user_id] = user.id
  end

  def sign_out
    @current_user = nil
    session[:user_id] = nil
  end
end
