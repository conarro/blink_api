require 'saddle/endpoint'


module BlinkApi
  module Endpoints

    class Status < Saddle::TraversalEndpoint
      def for_location location_id
        get nil, :id => location_id
      end
    end

  end
end
