# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Send only to users whose first app use is more than {threshold} days old.
    #
    class EngageOldUsersFilter < Filter

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @type = "engage-old-users"
      end

      attr_accessor :type

      # @return [Integer] An integer value representing the threshold to apply
      # on this filter.
      attr_accessor :threshold


      #
      # Mapper for EngageOldUsersFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'engage-old-users',
          type: {
            name: 'Composite',
            class_name: 'EngageOldUsersFilter',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              threshold: {
                required: false,
                serialized_name: 'threshold',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
