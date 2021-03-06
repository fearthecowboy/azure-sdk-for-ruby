# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # The integration account partner's business identity.
    #
    class BusinessIdentity

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The business identity qualifier e.g. as2identity, ZZ,
      # ZZZ, 31, 32
      attr_accessor :qualifier

      # @return [String] The user defined business identity value.
      attr_accessor :value


      #
      # Mapper for BusinessIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BusinessIdentity',
          type: {
            name: 'Composite',
            class_name: 'BusinessIdentity',
            model_properties: {
              qualifier: {
                required: true,
                serialized_name: 'qualifier',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: true,
                serialized_name: 'value',
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
