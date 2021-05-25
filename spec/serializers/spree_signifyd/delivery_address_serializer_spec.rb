require 'spec_helper'

module SolidusSignifyd
  describe DeliveryAddressSerializer do
    let(:delivery_address) { create(:address) }
    let(:serialized_address) { JSON.parse(DeliveryAddressSerializer.new(delivery_address).to_json) }

    context "node values" do
      it { expect(serialized_address).to include 'deliveryAddress' }
      it { expect(serialized_address[SolidusSignifyd::Name.name_key]).to eq SolidusSignifyd::Name.name_value(delivery_address) }
    end
  end
end
