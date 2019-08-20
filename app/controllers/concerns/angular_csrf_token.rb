module AngularCsrfToken
  extend ActiveSupport::Concern

  included do
    after_action :set_csrf_cookie_for_ng
    protect_from_forgery with: :exception

    rescue_from ActionController::InvalidAuthenticityToken do |exception|
      set_csrf_cookie_for_ng
      render plain: 'invalid token', status: :unprocessable_entity
    end
  end

  def set_csrf_cookie_for_ng
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end

  def verified_request?
    super || valid_authenticity_token?(session, request.headers['X-XSRF-TOKEN'])
  end
end
