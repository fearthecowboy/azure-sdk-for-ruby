# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # The trigger that results in a scaling action.
    #
    class MetricTrigger

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] the name of the metric that defines what the rule
      # monitors.
      attr_accessor :metric_name

      # @return [String] the resource identifier of the resource the rule
      # monitors.
      attr_accessor :metric_resource_uri

      # @return [Duration] the granularity of metrics the rule monitors. Must
      # be one of the predefined values returned from metric definitions for
      # the metric. Must be between 12 hours and 1 minute.
      attr_accessor :time_grain

      # @return [MetricStatisticType] the metric statistic type. How the
      # metrics from multiple instances are combined. Possible values include:
      # 'Average', 'Min', 'Max', 'Sum'
      attr_accessor :statistic

      # @return [Duration] the range of time in which instance data is
      # collected. This value must be greater than the delay in metric
      # collection, which can vary from resource-to-resource. Must be between
      # 12 hours and 5 minutes.
      attr_accessor :time_window

      # @return [TimeAggregationType] time aggregation type. How the data that
      # is collected should be combined over time. The default value is
      # Average. Possible values include: 'Average', 'Minimum', 'Maximum',
      # 'Total', 'Count'
      attr_accessor :time_aggregation

      # @return [ComparisonOperationType] the operator that is used to compare
      # the metric data and the threshold. Possible values include: 'Equals',
      # 'NotEquals', 'GreaterThan', 'GreaterThanOrEqual', 'LessThan',
      # 'LessThanOrEqual'
      attr_accessor :operator

      # @return [Float] the threshold of the metric that triggers the scale
      # action.
      attr_accessor :threshold


      #
      # Mapper for MetricTrigger class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MetricTrigger',
          type: {
            name: 'Composite',
            class_name: 'MetricTrigger',
            model_properties: {
              metric_name: {
                required: true,
                serialized_name: 'metricName',
                type: {
                  name: 'String'
                }
              },
              metric_resource_uri: {
                required: true,
                serialized_name: 'metricResourceUri',
                type: {
                  name: 'String'
                }
              },
              time_grain: {
                required: true,
                serialized_name: 'timeGrain',
                type: {
                  name: 'TimeSpan'
                }
              },
              statistic: {
                required: true,
                serialized_name: 'statistic',
                type: {
                  name: 'Enum',
                  module: 'MetricStatisticType'
                }
              },
              time_window: {
                required: true,
                serialized_name: 'timeWindow',
                type: {
                  name: 'TimeSpan'
                }
              },
              time_aggregation: {
                required: true,
                serialized_name: 'timeAggregation',
                type: {
                  name: 'Enum',
                  module: 'TimeAggregationType'
                }
              },
              operator: {
                required: true,
                serialized_name: 'operator',
                type: {
                  name: 'Enum',
                  module: 'ComparisonOperationType'
                }
              },
              threshold: {
                required: true,
                serialized_name: 'threshold',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
