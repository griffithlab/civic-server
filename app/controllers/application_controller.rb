class ApplicationController < ActionController::Base
  include Authentication
  include LastSeen
  include Pundit
  include ApiAnalytics
  include WithBadges
  include RateLimited

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def self.actions_without_auth(*actions)
    skip_before_action :ensure_signed_in, only: actions
    after_action :verify_authorized, except: actions
  end

  def pundit_user
    UserContext.new(current_user, params.dig(:organization, :id))
  end

  private
  def user_not_authorized
    head :forbidden
  end

  def not_found
    head :not_found
  end
end
