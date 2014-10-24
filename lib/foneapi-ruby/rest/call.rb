module Foneapi
  module Rest
    class Call

      attr_reader :properties

      @@defaults = { 'destination_type' => 'number', 'destination' => nil, 'url' => nil, 'ap_id' => 0, 'trunk' => nil, 'fallback_url' => nil, 'dial_timeout' => 60, 'caller_id_num' => nil, 'delay' => 0, 'caller_id_name' => nil }

      def initialize(properties)
        @properties = @@defaults.merge properties
      end

    end
  end
end
