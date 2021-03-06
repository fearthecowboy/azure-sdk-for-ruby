# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Search
  module Models
    #
    # Input of check name availability API.
    #
    class CheckNameAvailabilityInput

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The Search service name to validate. Search service
      # names must only contain lowercase letters, digits or dashes, cannot use
      # dash as the first two or last one characters, cannot contain
      # consecutive dashes, and must be between 2 and 60 characters in length.
      attr_accessor :name

      # @return [String] The type of the resource whose name is to be
      # validated. This value must always be 'searchServices'. Default value:
      # 'searchServices' .
      attr_accessor :type


      #
      # Mapper for CheckNameAvailabilityInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CheckNameAvailabilityInput',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityInput',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'searchServices',
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
