require_relative 'boot'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BakeUp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    config.generators do |g|
      g.test_framework false
      g.test_framework :rspec,
        controller_specs: false,
        view_specs: false,
        helper_specs: false,
        routing_specs: false
    end
  end
end
