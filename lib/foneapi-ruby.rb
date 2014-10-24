
require 'forwardable'
require 'net/http'

require 'foneapi-ruby/rest/client'
require 'foneapi-ruby/util/configuration'
require 'foneapi-ruby/rest/call'

module Foneapi
    extend SingleForwardable

    def_delegators :configuration, :fapi_key, :fapi_secret, :fapi_host

    ##
    # Pre-configure with account key and secret so that you don't need to
    # pass them to various initializers each time.
    def self.configure(&block)
        yield configuration
    end

    ##
    # Returns an existing or instantiates a new configuration object.
    def self.configuration
        @configuration ||= Util::Configuration.new
    end
    private_class_method :configuration
end
