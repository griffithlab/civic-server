civic_github_key = ENV['CIVIC_GITHUB_KEY'] || Rails.application.secrets.github_key
civic_github_secret = ENV['CIVIC_GITHUB_SECRET'] || Rails.application.secrets.github_secret

civic_orcid_key = ENV['CIVIC_ORCID_KEY'] || Rails.application.secrets.orcid_key
civic_orcid_secret = ENV['CIVIC_ORCID_SECRET'] || Rails.application.secrets.orcid_secret

civic_google_key = ENV['CIVIC_GOOGLE_KEY'] || Rails.application.secrets.google_key
civic_google_secret = ENV['CIVIC_GOOGLE_SECRET'] || Rails.application.secrets.google_secret

Rails.application.config.middleware.use OmniAuth::Builder do
  configure do |config|
    config.path_prefix = '/api/auth'
  end
  provider :github, civic_github_key, civic_github_secret
  provider :orcid, civic_orcid_key, civic_orcid_secret, authorize_params: { scope: '/authenticate' }, client_options: { token_url: 'https://pub.orcid.org/oauth/token' }
  provider :google_oauth2, civic_google_key, civic_google_secret
  provider :developer unless Rails.env.production?
end
