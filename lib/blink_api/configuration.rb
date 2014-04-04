module BlinkApi
  class Configuration
    attr_accessor :api_key

    def initialize
      @api_key = ENV['BLINK_API_KEY']
    end
  end

end
