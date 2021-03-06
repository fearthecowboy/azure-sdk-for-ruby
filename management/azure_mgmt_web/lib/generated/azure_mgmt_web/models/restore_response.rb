# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Response for an app restore request.
    #
    class RestoreResponse < ProxyOnlyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] When server starts the restore process, it will return
      # an operation ID identifying that particular restore operation.
      attr_accessor :operation_id


      #
      # Mapper for RestoreResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RestoreResponse',
          type: {
            name: 'Composite',
            class_name: 'RestoreResponse',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              operation_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.operationId',
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
