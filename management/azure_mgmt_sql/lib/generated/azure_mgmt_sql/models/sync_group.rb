# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # An Azure SQL Database sync group.
    #
    class SyncGroup < ProxyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] Sync interval of the sync group.
      attr_accessor :interval

      # @return [DateTime] Last sync time of the sync group.
      attr_accessor :last_sync_time

      # @return [SyncConflictResolutionPolicy] Conflict resolution policy of
      # the sync group. Possible values include: 'HubWin', 'MemberWin'
      attr_accessor :conflict_resolution_policy

      # @return [String] ARM resource id of the sync database in the sync
      # group.
      attr_accessor :sync_database_id

      # @return [String] User name for the sync group hub database credential.
      attr_accessor :hub_database_user_name

      # @return [String] Password for the sync group hub database credential.
      attr_accessor :hub_database_password

      # @return [SyncGroupState] Sync state of the sync group. Possible values
      # include: 'NotReady', 'Error', 'Warning', 'Progressing', 'Good'
      attr_accessor :sync_state

      # @return [SyncGroupSchema] Sync schema of the sync group.
      attr_accessor :schema


      #
      # Mapper for SyncGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SyncGroup',
          type: {
            name: 'Composite',
            class_name: 'SyncGroup',
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
              interval: {
                required: false,
                serialized_name: 'properties.interval',
                type: {
                  name: 'Number'
                }
              },
              last_sync_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.lastSyncTime',
                type: {
                  name: 'DateTime'
                }
              },
              conflict_resolution_policy: {
                required: false,
                serialized_name: 'properties.conflictResolutionPolicy',
                type: {
                  name: 'String'
                }
              },
              sync_database_id: {
                required: false,
                serialized_name: 'properties.syncDatabaseId',
                type: {
                  name: 'String'
                }
              },
              hub_database_user_name: {
                required: false,
                serialized_name: 'properties.hubDatabaseUserName',
                type: {
                  name: 'String'
                }
              },
              hub_database_password: {
                required: false,
                serialized_name: 'properties.hubDatabasePassword',
                type: {
                  name: 'String'
                }
              },
              sync_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.syncState',
                type: {
                  name: 'String'
                }
              },
              schema: {
                required: false,
                serialized_name: 'properties.schema',
                type: {
                  name: 'Composite',
                  class_name: 'SyncGroupSchema'
                }
              }
            }
          }
        }
      end
    end
  end
end
