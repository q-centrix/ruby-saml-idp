require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"

Bundler.require(*Rails.groups) if defined?(Bundler)

module RailsApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.eager_load = false

    # Allow any host in the dummy app used by specs (Capybara sets app.example.com).
    config.hosts.clear

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]
  end
end
