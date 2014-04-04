require 'saddle/endpoint'


module BlinkApi
  module Endpoints

    class Locations < Saddle::TraversalEndpoint
      def find lat, long, lat_range, long_range, options={}
        get nil, {:lat => lat, :lng => long, :latd => lat_range, :lngd => long_range}.merge(options)
      end
    end

  end
end
