# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2017_09_01
  module Models
    #
    # Topology of the specified resource group.
    #
    class Topology

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] GUID representing the operation id.
      attr_accessor :id

      # @return [DateTime] The datetime when the topology was initially created
      # for the resource group.
      attr_accessor :created_date_time

      # @return [DateTime] The datetime when the topology was last modified.
      attr_accessor :last_modified

      # @return [Array<TopologyResource>]
      attr_accessor :resources


      #
      # Mapper for Topology class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Topology',
          type: {
            name: 'Composite',
            class_name: 'Topology',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              created_date_time: {
                required: false,
                read_only: true,
                serialized_name: 'createdDateTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified: {
                required: false,
                read_only: true,
                serialized_name: 'lastModified',
                type: {
                  name: 'DateTime'
                }
              },
              resources: {
                required: false,
                serialized_name: 'resources',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TopologyResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TopologyResource'
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