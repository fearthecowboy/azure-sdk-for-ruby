# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ApiManagement::Api_2017_07_14
  module Models
    #
    # List of Users Identity list representation.
    #
    class UserIdentityCollection

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<UserIdentityContract>] User Identity values.
      attr_accessor :value

      # @return [Integer] Total record count number across all pages.
      attr_accessor :count

      # @return [String] Next page link if any.
      attr_accessor :next_link


      #
      # Mapper for UserIdentityCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UserIdentityCollection',
          type: {
            name: 'Composite',
            class_name: 'UserIdentityCollection',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'UserIdentityContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserIdentityContract'
                      }
                  }
                }
              },
              count: {
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
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