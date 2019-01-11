Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '*',
      methods: %i(get post put patch delete options head),
      max_age: 1728000,
      headers: :any,
      expose: 'Origin, Content-Type, Accept, Authorization, Token'
  end
end