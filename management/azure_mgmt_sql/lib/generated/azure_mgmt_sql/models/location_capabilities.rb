# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # The capabilities for a location.
    #
    class LocationCapabilities

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The location name.
      attr_accessor :name

      # @return [CapabilityStatus] Azure SQL Database's status for the
      # location. Possible values include: 'Visible', 'Available', 'Default',
      # 'Disabled'
      attr_accessor :status

      # @return [Array<ServerVersionCapability>] The list of supported server
      # versions.
      attr_accessor :supported_server_versions


      #
      # Mapper for LocationCapabilities class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LocationCapabilities',
          type: {
            name: 'Composite',
            class_name: 'LocationCapabilities',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'CapabilityStatus'
                }
              },
              supported_server_versions: {
                required: false,
                read_only: true,
                serialized_name: 'supportedServerVersions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ServerVersionCapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServerVersionCapability'
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
