# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Application gateway BackendHealth pool.
    #
    class ApplicationGatewayBackendHealthPool

      include MsRestAzure

      include MsRest::JSONable
      # @return [ApplicationGatewayBackendAddressPool] Reference of an
      # ApplicationGatewayBackendAddressPool resource.
      attr_accessor :backend_address_pool

      # @return [Array<ApplicationGatewayBackendHealthHttpSettings>] List of
      # ApplicationGatewayBackendHealthHttpSettings resources.
      attr_accessor :backend_http_settings_collection


      #
      # Mapper for ApplicationGatewayBackendHealthPool class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayBackendHealthPool',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayBackendHealthPool',
            model_properties: {
              backend_address_pool: {
                required: false,
                serialized_name: 'backendAddressPool',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationGatewayBackendAddressPool'
                }
              },
              backend_http_settings_collection: {
                required: false,
                serialized_name: 'backendHttpSettingsCollection',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayBackendHealthHttpSettingsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayBackendHealthHttpSettings'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
