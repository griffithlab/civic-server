class ApplicationController < ActionController::Base
  include Authentication
  #include AngularCsrfToken
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  #protect_from_forgery with: :exception

  def self.actions_without_auth(*actions)
    skip_before_filter :ensure_signed_in, only: actions
    after_action :verify_authorized, except: actions
  end

  private

  def user_not_authorized
    head :forbidden
  end
end
