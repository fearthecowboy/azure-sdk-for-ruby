# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # The database usages.
    #
    class DatabaseUsage

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the usage metric.
      attr_accessor :name

      # @return [String] The name of the resource.
      attr_accessor :resource_name

      # @return [String] The usage metric display name.
      attr_accessor :display_name

      # @return [Float] The current value of the usage metric.
      attr_accessor :current_value

      # @return [Float] The current limit of the usage metric.
      attr_accessor :limit

      # @return [String] The units of the usage metric.
      attr_accessor :unit

      # @return [DateTime] The next reset time for the usage metric (ISO8601
      # format).
      attr_accessor :next_reset_time


      #
      # Mapper for DatabaseUsage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DatabaseUsage',
          type: {
            name: 'Composite',
            class_name: 'DatabaseUsage',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              resource_name: {
                required: false,
                read_only: true,
                serialized_name: 'resourceName',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                read_only: true,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              current_value: {
                required: false,
                read_only: true,
                serialized_name: 'currentValue',
                type: {
                  name: 'Double'
                }
              },
              limit: {
                required: false,
                read_only: true,
                serialized_name: 'limit',
                type: {
                  name: 'Double'
                }
              },
              unit: {
                required: false,
                read_only: true,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              next_reset_time: {
                required: false,
                read_only: true,
                serialized_name: 'nextResetTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
