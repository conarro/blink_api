# Blink API Client [![Build Status](https://travis-ci.org/kconarro14/blink_api.svg?branch=master)](https://travis-ci.org/kconarro14/blink_api) [![Code Climate](https://codeclimate.com/github/kconarro14/blink_api.png)](https://codeclimate.com/github/kconarro14/blink_api) [![Dependency Status](https://gemnasium.com/kconarro14/blink_api.svg)](https://gemnasium.com/kconarro14/blink_api)

A Ruby wrapper for the [Blink Network API](http://www.blinknetwork.com/developer.html)

## Usage

Create a client with your API key

```ruby
client = BlinkApi::Client.create(:api_key => 'mykey') # uses ENV['BLINK_API_KEY'] by default
```

Find locations using the __Locations__ endpoint:

```ruby
lat        = 35
long       = -85
lat_range  = 5
long_range = 5

client.locations.find(lat, long, lat_range, long_range)
=> [{"id"=>91316,
  "latitude"=>35.903453,
  "longitude"=>-84.116367,
  "name"=>"Calhoun's Pelissippi",
  "address1"=>"10020 Kingston Pike",
  "address2"=>"",
  "city"=>"Knoxville",
  "state"=>"TN",
  "zip"=>"37923",
  "country"=>"US",
  # ...
}]
```

Search for stations by name using the __Search__ endpoint:

```ruby
lat  = 35
long = -85

client.search.query('City of Shelbyville', lat, long)
=> [{"id"=>61186,
  "latitude"=>35.483724,
  "longitude"=>-86.461214,
  "name"=>"City of Shelbyville",
  "address1"=>"201 N Spring Street",
  "address2"=>"",
  "city"=>"Shelbyville",
  "state"=>"TN",
  "zip"=>"37160",
  "country"=>"US",
  # ...
}]
```

Check the status of a specific location using the __Status__ endpoint:

```ruby
location_id = 91316

client.status.for_location(location_id)
=> {"id"=>91316,
   "latitude"=>35.903453,
   "longitude"=>-84.116367,
   "name"=>"Calhoun's Pelissippi",
   "address1"=>"10020 Kingston Pike",
   "address2"=>"",
   "city"=>"Knoxville",
   "state"=>"TN",
   "zip"=>"37923",
   "country"=>"US",
   # ...
}
```

*For more details about the API endpoints, download Blink's [API docs](http://www.blinknetwork.com/file/17254/BLINK+API+MAP+20140128.1+.pdf).*

## Installation

Add this line to your application's Gemfile:

    gem 'blink_api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blink_api

## Contributing

1. Fork it ( http://github.com/<my-github-username>/blink_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
