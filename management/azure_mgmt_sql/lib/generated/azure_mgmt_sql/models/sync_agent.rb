# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # An Azure SQL Database sync agent.
    #
    class SyncAgent < ProxyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Name of the sync agent.
      attr_accessor :sync_agent_name

      # @return [String] ARM resource id of the sync database in the sync
      # agent.
      attr_accessor :sync_database_id

      # @return [DateTime] Last alive time of the sync agent.
      attr_accessor :last_alive_time

      # @return [SyncAgentState] State of the sync agent. Possible values
      # include: 'Online', 'Offline', 'NeverConnected'
      attr_accessor :state

      # @return [Boolean] If the sync agent version is up to date.
      attr_accessor :is_up_to_date

      # @return [DateTime] Expiration time of the sync agent version.
      attr_accessor :expiry_time

      # @return [String] Version of the sync agent.
      attr_accessor :version


      #
      # Mapper for SyncAgent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SyncAgent',
          type: {
            name: 'Composite',
            class_name: 'SyncAgent',
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
              sync_agent_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.name',
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
              last_alive_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.lastAliveTime',
                type: {
                  name: 'DateTime'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              is_up_to_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.isUpToDate',
                type: {
                  name: 'Boolean'
                }
              },
              expiry_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.expiryTime',
                type: {
                  name: 'DateTime'
                }
              },
              version: {
                required: false,
                read_only: true,
                serialized_name: 'properties.version',
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
