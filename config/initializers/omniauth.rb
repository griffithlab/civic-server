Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['CIVIC_GITHUB_KEY'], ENV['CIVIC_GITHUB_SECRET']
end
