require 'saddle'
require 'faraday_middleware/request/api_key'

require "blink_api/version"
require "blink_api/client"
require "blink_api/configuration"

require "blink_api/endpoints/locations"
require "blink_api/endpoints/search"
require "blink_api/endpoints/status"

module BlinkApi
  extend self

  attr_accessor :configuration

  def configuration
    @configuration ||= Configuration.new    
  end

  def configure
    yield(configuration)
  end
end
