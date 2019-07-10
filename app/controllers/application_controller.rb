class ApplicationController < ActionController::Base
  include Authentication
  include LastSeen
  include Pundit
  include ApiAnalytics
  include WithBadges
  include RateLimited

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  skip_before_filter :verify_authenticity_token

  def self.actions_without_auth(*actions)
    skip_before_filter :ensure_signed_in, only: actions
    after_action :verify_authorized, except: actions
  end

  private
  def user_not_authorized
    head :forbidden
  end
end
