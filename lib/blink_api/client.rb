module BlinkApi
  class Client < Saddle::Client

    def self.api_key
      BlinkApi.configuration.api_key
    end

    def self.host
      'api.blinknetwork.com'
    end

    def self.path_prefix
      'map/v1'
    end

    def self.use_ssl
      true
    end

    def self.default_options
      super.merge(:api_key => api_key)
    end

    def self.additional_middlewares
      [:klass => FaradayMiddleware::Request::ApiKey, :args => []]
    end

  end
end
