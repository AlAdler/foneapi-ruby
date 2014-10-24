module Foneapi
    module Rest
        class Client

            attr_reader :fapi_key, :fapi_host

            def initialize(fapi_key = nil, fapi_secret = nil, fapi_host = nil)
                @fapi_key = fapi_key || Foneapi.fapi_key
                @fapi_secret = fapi_secret || Foneapi.fapi_secret
                @fapi_host = fapi_host || Foneapi.fapi_host
                if @fapi_key.nil? || @fapi_secret.nil? || @fapi_host.nil?
                    raise ArgumentError, 'fapi_key, fapi_secret and fapi_host are required'

                end
            end
        end
    end
end
