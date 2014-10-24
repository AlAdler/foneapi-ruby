# foneapi-ruby

Ruby wrapper for the Foneapi API
http://www.foneapi.com

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'foneapi-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install foneapi-ruby

## Usage

### Setup

require 'foneapi-ruby'

# put your own credentials here
fapi_key = 'xxxxxxxxxxxxxxxxxxxx'
fapi_secret = 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'
fapi_host = 'http://yourfoneapiserver.com'

# set up a client to talk to the Twilio REST API
@client = Foneapi::Rest::Client.new fapi_key, fapi_secret, fapi_host

# alternatively, you can preconfigure the client like so
Foneapi.configure do |config|
  config.fapi_key = fapi_key
  config.fapi_secret = fapi_secret
  config.fapi_host = fapi_host
end

# and then you can create a new client without parameters
@client = Foneapi::Rest::Client.new

## Contributing

1. Fork it ( https://github.com/[my-github-username]/my_gem/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
