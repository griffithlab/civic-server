module LastSeen
  extend ActiveSupport::Concern

  included do
    hide_action :update_last_seen_at
    before_filter :update_last_seen_at, if: ->() { signed_in? }
  end

  def update_last_seen_at
    last_seen_at = session[:last_seen_at]
    if last_seen_at.nil? || last_seen_at > 5.minutes.ago
      time = Time.now
      session[:last_seen_at] = time
      current_user.last_seen_at = time
      current_user.save
    end
  end
end
