require 'active_model_serializers'

module SolidusSignifyd
  class DeliveryAddressSerializer < AddressSerializer
    def attributes(*args)
      hash = {}
      hash['deliveryAddress'] = address
      hash[SolidusSignifyd::Name.name_key] = SolidusSignifyd::Name.name_value(object)
      hash
    end
  end
end
