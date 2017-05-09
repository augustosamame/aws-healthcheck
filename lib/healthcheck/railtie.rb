require 'rails'

module Healthcheck
  class Railtie < ::Rails::Railtie
    config.app.middleware.insert_before ::Rails::Rack::Logger, Healthcheck::Middleware
  end
end
