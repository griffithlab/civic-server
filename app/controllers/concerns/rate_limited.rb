module RateLimited
  extend ActiveSupport::Concern

  included do
    after_action :add_rate_limit_headers
  end

  def add_rate_limit_headers
    throttle_data = request.env['rack.attack.throttle_data']['req/ip']
    now = throttle_data[:epoch_time]
    headers['RateLimit-Limit'] = throttle_data[:limit].to_s
    headers['RateLimit-Remaining'] = (throttle_data[:limit] - throttle_data[:count]).to_s
    headers['RateLimit-Reset'] = (now + (throttle_data[:period] - now % throttle_data[:period])).to_s
  end
end