require 'saddle/endpoint'


module BlinkApi
  module Endpoints

    class Search < Saddle::TraversalEndpoint
      def query query, lat, long, options={}
        get nil, {:q => query, :lat => lat, :lng => long}.merge(options)
      end
    end

  end
end
