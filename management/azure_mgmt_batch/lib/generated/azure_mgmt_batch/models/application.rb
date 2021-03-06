# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Batch
  module Models
    #
    # Contains information about an application in a Batch account.
    #
    class Application

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] A string that uniquely identifies the application
      # within the account.
      attr_accessor :id

      # @return [String] The display name for the application.
      attr_accessor :display_name

      # @return [Array<ApplicationPackage>] The list of packages under this
      # application.
      attr_accessor :packages

      # @return [Boolean] A value indicating whether packages within the
      # application may be overwritten using the same version string.
      attr_accessor :allow_updates

      # @return [String] The package to use if a client requests the
      # application but does not specify a version.
      attr_accessor :default_version


      #
      # Mapper for Application class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Application',
          type: {
            name: 'Composite',
            class_name: 'Application',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              packages: {
                required: false,
                serialized_name: 'packages',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationPackageElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationPackage'
                      }
                  }
                }
              },
              allow_updates: {
                required: false,
                serialized_name: 'allowUpdates',
                type: {
                  name: 'Boolean'
                }
              },
              default_version: {
                required: false,
                serialized_name: 'defaultVersion',
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
