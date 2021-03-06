# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Deployment slot parameters.
    #
    class CsmSlotEntity

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Destination deployment slot during swap operation.
      attr_accessor :target_slot

      # @return [Boolean] <code>true</code> to preserve Virtual Network to the
      # slot during swap; otherwise, <code>false</code>.
      attr_accessor :preserve_vnet


      #
      # Mapper for CsmSlotEntity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CsmSlotEntity',
          type: {
            name: 'Composite',
            class_name: 'CsmSlotEntity',
            model_properties: {
              target_slot: {
                required: true,
                serialized_name: 'targetSlot',
                type: {
                  name: 'String'
                }
              },
              preserve_vnet: {
                required: true,
                serialized_name: 'preserveVnet',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
