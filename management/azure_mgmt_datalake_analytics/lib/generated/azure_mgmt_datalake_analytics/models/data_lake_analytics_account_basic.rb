# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics
  module Models
    #
    # A Data Lake Analytics account object, containing all information
    # associated with the named Data Lake Analytics account.
    #
    class DataLakeAnalyticsAccountBasic < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [DataLakeAnalyticsAccountStatus] the provisioning status of the
      # Data Lake Analytics account. Possible values include: 'Failed',
      # 'Creating', 'Running', 'Succeeded', 'Patching', 'Suspending',
      # 'Resuming', 'Deleting', 'Deleted'
      attr_accessor :provisioning_state

      # @return [DataLakeAnalyticsAccountState] the state of the Data Lake
      # Analytics account. Possible values include: 'Active', 'Suspended'
      attr_accessor :state

      # @return [DateTime] the account creation time.
      attr_accessor :creation_time

      # @return [DateTime] the account last modified time.
      attr_accessor :last_modified_time

      # @return [String] the full CName endpoint for this account.
      attr_accessor :endpoint

      # @return The unique identifier associated with this Data Lake Analytics
      # account.
      attr_accessor :account_id


      #
      # Mapper for DataLakeAnalyticsAccountBasic class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DataLakeAnalyticsAccountBasic',
          type: {
            name: 'Composite',
            class_name: 'DataLakeAnalyticsAccountBasic',
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
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'DataLakeAnalyticsAccountStatus'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'Enum',
                  module: 'DataLakeAnalyticsAccountState'
                }
              },
              creation_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              endpoint: {
                required: false,
                read_only: true,
                serialized_name: 'properties.endpoint',
                type: {
                  name: 'String'
                }
              },
              account_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.accountId',
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