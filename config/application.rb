require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
MultiJson.use :yajl

module CivicServer
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.autoload_paths += %W(#{config.root}/lib)

    config.data_dump_version = 9
    config.data_dump_path = File.join(Rails.root, 'db', 'data.sql')

    config.active_job.queue_adapter = :delayed_job

    config.active_record.schema_format = :sql

    config.middleware.insert_before ActionDispatch::Static, Rack::Rewrite do
      rewrite %r{^(?!/(api|links|admin|list)(/.*)?(\?.*)?$).*}, '/index.html', :not => %r{(.*\..*)}
    end

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    ActionMailer::Base.delivery_method = :smtp
    ActionMailer::Base.smtp_settings = {
      :from => 'civic-notification@genome.wustl.edu',
      :address => 'gscsmtp.wustl.edu',
      :port => 25,
      :domain => 'genome.wustl.edu',
      :enable_starttls_auto => false
    }
  end
end
