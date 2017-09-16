# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ApiManagement::Api_2017_07_14
  module Models
    #
    # User update parameters.
    #
    class UserUpdateParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [UserState] Account state. Specifies whether the user is active
      # or not. Blocked users are unable to sign into the developer portal or
      # call any APIs of subscribed products. Default state is Active. Possible
      # values include: 'active', 'blocked'. Default value: 'active' .
      attr_accessor :state

      # @return [String] Optional note about a user set by the administrator.
      attr_accessor :note

      # @return [Array<UserIdentityContract>] Collection of user identities.
      attr_accessor :identities

      # @return [String] Email address. Must not be empty and must be unique
      # within the service instance.
      attr_accessor :email

      # @return [String] User Password.
      attr_accessor :password

      # @return [String] First name.
      attr_accessor :first_name

      # @return [String] Last name.
      attr_accessor :last_name


      #
      # Mapper for UserUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UserUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'UserUpdateParameters',
            model_properties: {
              state: {
                required: false,
                serialized_name: 'properties.state',
                default_value: 'active',
                type: {
                  name: 'Enum',
                  module: 'UserState'
                }
              },
              note: {
                required: false,
                serialized_name: 'properties.note',
                type: {
                  name: 'String'
                }
              },
              identities: {
                required: false,
                read_only: true,
                serialized_name: 'properties.identities',
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
              email: {
                required: false,
                serialized_name: 'properties.email',
                constraints: {
                  MaxLength: 254,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              password: {
                required: false,
                serialized_name: 'properties.password',
                type: {
                  name: 'String'
                }
              },
              first_name: {
                required: false,
                serialized_name: 'properties.firstName',
                constraints: {
                  MaxLength: 100,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              last_name: {
                required: false,
                serialized_name: 'properties.lastName',
                constraints: {
                  MaxLength: 100,
                  MinLength: 1
                },
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