# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MediaServices
  module Models
    #
    # The response body for CheckNameAvailability API.
    #
    class CheckNameAvailabilityOutput

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] Specifies if the name is available.
      attr_accessor :name_available

      # @return [EntityNameUnavailabilityReason] Specifies the reason if the
      # name is not available. Possible values include: 'None', 'Invalid',
      # 'AlreadyExists'
      attr_accessor :reason

      # @return [String] Specifies the detailed reason if the name is not
      # available.
      attr_accessor :message


      #
      # Mapper for CheckNameAvailabilityOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CheckNameAvailabilityOutput',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityOutput',
            model_properties: {
              name_available: {
                required: false,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                required: false,
                serialized_name: 'reason',
                type: {
                  name: 'Enum',
                  module: 'EntityNameUnavailabilityReason'
                }
              },
              message: {
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
