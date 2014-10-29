class ApplicationController < ActionController::Base
  include Authentication
  include AngularCsrfToken
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protect_from_forgery with: :exception

  private

  def user_not_authorized
    head :forbidden
  end
end
