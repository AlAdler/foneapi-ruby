require 'foneapi-ruby/rest/client'

describe Foneapi::Rest::Client do
  describe 'config at class level' do
    after(:each) do
      Foneapi.instance_variable_set('@configuration', nil)
    end

    it 'should set the key, secret and host with a config block' do
      Foneapi.configure do |config|
        config.fapi_key = 'someKey'
        config.fapi_secret = 'someSecret'
        config.fapi_host = 'someHost'
      end

      client = Foneapi::Rest::Client.new
      expect(client.fapi_key).to eq('someKey')
      expect(client.fapi_host).to eq('someHost')
      expect(client.instance_variable_get('@fapi_secret')).to eq('someSecret')
    end

    it 'should overwrite account sid and auth token if passed to initializer' do
      Foneapi.configure do |config|
        config.fapi_key = 'someKey'
        config.fapi_secret = 'someSecret'
        config.fapi_host = 'someHost'
      end

      client = Foneapi::Rest::Client.new 'otherKey', 'otherSecret', 'otherHost'
      expect(client.fapi_key).to eq('otherKey')
      expect(client.fapi_host).to eq('otherHost')
      expect(client.instance_variable_get('@fapi_secret')).to eq('otherSecret')
    end
    
    it 'should throw an argument error if key, secret or host are not set' do
      expect { Foneapi::Rest::Client.new }.to raise_error(ArgumentError)
    end
  end
end