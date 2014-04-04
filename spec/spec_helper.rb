require 'blink_api'
require 'webmock/rspec'
require 'vcr'

VCR.configure do |c|
  c.allow_http_connections_when_no_cassette = true
  # the directory where your cassettes will be saved
  c.cassette_library_dir = 'spec/support/vcr'
  # your HTTP request service. You can also use fakeweb, webmock, and more
  c.hook_into :webmock
end

RSpec.configure do |config|
  config.color_enabled = true # Use color in STDOUT
  config.order = 'random'
end
