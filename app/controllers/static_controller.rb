class StaticController < ApplicationController
  skip_before_filter :ensure_signed_in
end
