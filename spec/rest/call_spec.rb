describe Foneapi::Rest::Call do
  describe 'setup call' do
    it 'should have default properties with only phone passed' do
      call = Foneapi::Rest::Call.new({ 'destination' => '1234567890' })
      expect(call.properties['destination']).to eq('1234567890')
      expect(call.properties['destination_type']).to eq('number')
    end
  end
end
