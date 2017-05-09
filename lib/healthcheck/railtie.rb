require 'rails'

module Healthcheck
  class Railtie < ::Rails::Railtie
    config.app_middleware.insert_before ::Rails::Rack::Logger, Healthcheck::Middleware
  end
end
