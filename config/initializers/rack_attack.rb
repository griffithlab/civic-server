class Rack::Attack

  ### Configure Cache ###
  # Throttle all requests by IP (60rpm)
  #
  # Key: "rack::attack:#{Time.now.to_i/:period}:req/ip:#{req.ip}"
  throttle('req/ip', limit: 600, period: 5.minutes) do |req|
    req.ip
  end


  self.throttled_response = lambda do |env|
    match_data = env['rack.attack.match_data']
    now = match_data[:epoch_time]

    headers = {
      'RateLimit-Limit' => match_data[:limit].to_s,
      'RateLimit-Remaining' => '0',
      'RateLimit-Reset' => (now + (match_data[:period] - now % match_data[:period])).to_s
    }

    [ 429, headers, ["Rate Limited: Please see https://griffithlab.github.io/civic-api-docs/#throttling\n"]]
  end
end