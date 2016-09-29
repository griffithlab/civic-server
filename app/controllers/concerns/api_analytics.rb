module ApiAnalytics
  extend ActiveSupport::Concern

  included do
    after_filter :queue_google_analytics_submission
    hide_action :queue_google_analytics_submission

    def self.skip_analytics(*actions)
      skip_after_filter :queue_google_analytics_submission, only: actions
    end
  end

  def queue_google_analytics_submission
    if request['HTTP_CIVIC_WEB_CLIENT_VERSION'].blank? && Rails.env.production?
      SendApiAnalytics.perform_later(
        referrer: request.referer,
        user_agent: request.user_agent,
        user_ip: request.remote_ip,
        path: request.path,
      )
    end
  end
end