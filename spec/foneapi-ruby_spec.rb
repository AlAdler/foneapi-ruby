require 'foneapi-ruby'

describe Foneapi do
  after(:each) do
    Foneapi.instance_variable_set('@configuration', nil)
  end

  it 'should set the fapi_key, fapi_secret and fapi_host with a config block' do
    Foneapi.configure do |config|
      config.fapi_key = 'someKey'
      config.fapi_secret = 'someSecret'
      config.fapi_host = 'someHost'
    end

    expect(Foneapi.fapi_key).to eq('someKey')
    expect(Foneapi.fapi_secret).to eq('someSecret')
    expect(Foneapi.fapi_host).to eq('someHost')
  end
end