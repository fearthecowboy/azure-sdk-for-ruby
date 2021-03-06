# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::IotHub
  module Models
    #
    # The properties of a routing rule that your IoT hub uses to route messages
    # to endpoints.
    #
    class RouteProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the route. The name can only include
      # alphanumeric characters, periods, underscores, hyphens, has a maximum
      # length of 64 characters, and must be unique.
      attr_accessor :name

      # @return [RoutingSource] The source that the routing rule is to be
      # applied to, such as DeviceMessages. Possible values include:
      # 'DeviceMessages', 'TwinChangeEvents', 'DeviceLifecycleEvents',
      # 'DeviceJobLifecycleEvents'
      attr_accessor :source

      # @return [String] The condition that is evaluated to apply the routing
      # rule. If no condition is provided, it evaluates to true by default. For
      # grammar, see:
      # https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language
      attr_accessor :condition

      # @return [Array<String>] The list of endpoints to which messages that
      # satisfy the condition are routed. Currently only one endpoint is
      # allowed.
      attr_accessor :endpoint_names

      # @return [Boolean] Used to specify whether a route is enabled.
      attr_accessor :is_enabled


      #
      # Mapper for RouteProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RouteProperties',
          type: {
            name: 'Composite',
            class_name: 'RouteProperties',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                constraints: {
                  Pattern: '^[A-Za-z0-9-._]{1,64}$'
                },
                type: {
                  name: 'String'
                }
              },
              source: {
                required: true,
                serialized_name: 'source',
                type: {
                  name: 'String'
                }
              },
              condition: {
                required: false,
                serialized_name: 'condition',
                type: {
                  name: 'String'
                }
              },
              endpoint_names: {
                required: true,
                serialized_name: 'endpointNames',
                constraints: {
                  MaxItems: 1,
                  MinItems: 1
                },
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              is_enabled: {
                required: true,
                serialized_name: 'isEnabled',
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
