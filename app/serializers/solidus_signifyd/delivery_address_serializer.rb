require 'active_model_serializers'

module SolidusSignifyd
  class DeliveryAddressSerializer < AddressSerializer
    def attributes(*args)
      hash = {}
      hash['deliveryAddress'] = address
      hash['fullName'] = object.full_name
      hash
    end
  end
end
