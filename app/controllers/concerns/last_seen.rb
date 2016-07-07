module LastSeen
  extend ActiveSupport::Concern

  included do
    hide_action :update_last_seen_at
    before_filter :update_last_seen_at, if: ->() { signed_in? }
  end

  def update_last_seen_at
    if current_user.last_seen_at.nil? || current_user.last_seen_at < 5.minutes.ago
      current_user.last_seen_at = Time.now
      current_user.save
    end
  end
end
