civic_github_key = ENV['CIVIC_GITHUB_KEY'] || Rails.application.secrets.civic_github_key
civic_github_secret = ENV['CIVIC_GITHUB_SECRET'] || Rails.application.secrets.civic_github_secret

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, civic_github_key, civic_github_secret
end
