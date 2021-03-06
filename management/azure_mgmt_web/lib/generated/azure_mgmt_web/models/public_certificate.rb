# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Public certificate object
    #
    class PublicCertificate < ProxyOnlyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Public Certificate byte array
      attr_accessor :blob

      # @return [PublicCertificateLocation] Public Certificate Location.
      # Possible values include: 'CurrentUserMy', 'LocalMachineMy', 'Unknown'
      attr_accessor :public_certificate_location

      # @return [String] Certificate Thumbprint
      attr_accessor :thumbprint


      #
      # Mapper for PublicCertificate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PublicCertificate',
          type: {
            name: 'Composite',
            class_name: 'PublicCertificate',
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
              blob: {
                required: false,
                serialized_name: 'properties.blob',
                type: {
                  name: 'String'
                }
              },
              public_certificate_location: {
                required: false,
                serialized_name: 'properties.publicCertificateLocation',
                type: {
                  name: 'Enum',
                  module: 'PublicCertificateLocation'
                }
              },
              thumbprint: {
                required: false,
                read_only: true,
                serialized_name: 'properties.thumbprint',
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
