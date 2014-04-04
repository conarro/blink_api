require 'faraday'

module FaradayMiddleware
  module Request

      # Public: Adds the api key as a url param if present

      class ApiKey < Faraday::Middleware
        def call(env)
          api_key = env[:request][:client_options][:api_key]

          if api_key
            env[:url].query = env[:url].query ? "#{env[:url].query}&key=#{api_key}" : "key=#{api_key}"
          end

          @app.call env
        end
      end

  end
end
