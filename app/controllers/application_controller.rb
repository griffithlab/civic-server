class ApplicationController < ActionController::Base
  include Authentication
  include AngularCsrfToken

  protect_from_forgery with: :exception
end
