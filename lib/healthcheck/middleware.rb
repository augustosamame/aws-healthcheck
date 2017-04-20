module Healthcheck
  class Middleware
    def initialize(app)
      @app = app
    end
    
    def call(env)
      Rails.logger.silence do
        return [200, {}, []] if env['PATH_INFO'] == '/healthcheck'
      end
      @app.call env
    end
    
  end
end
