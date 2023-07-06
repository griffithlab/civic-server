require 'uri'
require 'net/http'

class SendApiAnalytics < ApplicationJob
  GA_MEASUREMENT_ID = 'G-Y6DR1YK7V9'
  GA_API_SECRET = Rails.application.secrets.ga_api_secret

  ANALYTICS_URL = "https://www.google-analytics.com/mp/collect?api_secret=#{GA_API_SECRET}&measurement_id=#{GA_MEASUREMENT_ID}"
  HEADER = {'Content-Type': 'application/json'}

  def perform(args = {})
    Net::HTTP.post(URI(ANALYTICS_URL), create_body(args))
  end

  def create_body(opts)
    {
      client_id: SecureRandom.uuid,
      user_id: opts[:user_ip],
      timestamp_micros: DateTime.now.strftime("%s%6N"),
      events: [
        {
          name: 'legacy_api_request',
          params: {
            ip: opts[:user_ip],
            referrer: opts[:referrer] || '',
            user_agent: opts[:user_agent] || '',
            path: opts[:path]
          }
        }
      ]
    }.to_json
  end
end
