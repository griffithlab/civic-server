module AngularCsrfToken
  extend ActiveSupport::Concern

  included do
    after_filter :set_csrf_cookie_for_ng
    hide_action(
      :set_csrf_cookie_for_ng,
      :verified_request?
    )

    rescue_from ActionController::InvalidAuthenticityToken do |exception|
      set_csrf_cookie_for_ng
      render error: 'invalid token', status: :unprocessable_entity
    end
  end

  def set_csrf_cookie_for_ng
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end

  def verified_request?
    super || form_authenticity_token == request.headers['X-XSRF-TOKEN']
  end
end
