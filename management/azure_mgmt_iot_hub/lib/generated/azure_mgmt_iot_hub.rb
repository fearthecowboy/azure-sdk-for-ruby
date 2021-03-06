# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_iot_hub/module_definition'
require 'ms_rest_azure'

module Azure::ARM::IotHub
  autoload :Operations,                                         'generated/azure_mgmt_iot_hub/operations.rb'
  autoload :IotHubResource,                                     'generated/azure_mgmt_iot_hub/iot_hub_resource.rb'
  autoload :IotHubClient,                                       'generated/azure_mgmt_iot_hub/iot_hub_client.rb'

  module Models
    autoload :SharedAccessSignatureAuthorizationRuleListResult,   'generated/azure_mgmt_iot_hub/models/shared_access_signature_authorization_rule_list_result.rb'
    autoload :SharedAccessSignatureAuthorizationRule,             'generated/azure_mgmt_iot_hub/models/shared_access_signature_authorization_rule.rb'
    autoload :OperationDisplay,                                   'generated/azure_mgmt_iot_hub/models/operation_display.rb'
    autoload :EventHubProperties,                                 'generated/azure_mgmt_iot_hub/models/event_hub_properties.rb'
    autoload :Operation,                                          'generated/azure_mgmt_iot_hub/models/operation.rb'
    autoload :RoutingServiceBusTopicEndpointProperties,           'generated/azure_mgmt_iot_hub/models/routing_service_bus_topic_endpoint_properties.rb'
    autoload :OperationListResult,                                'generated/azure_mgmt_iot_hub/models/operation_list_result.rb'
    autoload :RoutingStorageContainerProperties,                  'generated/azure_mgmt_iot_hub/models/routing_storage_container_properties.rb'
    autoload :ErrorDetails,                                       'generated/azure_mgmt_iot_hub/models/error_details.rb'
    autoload :RouteProperties,                                    'generated/azure_mgmt_iot_hub/models/route_properties.rb'
    autoload :IotHubQuotaMetricInfo,                              'generated/azure_mgmt_iot_hub/models/iot_hub_quota_metric_info.rb'
    autoload :RoutingProperties,                                  'generated/azure_mgmt_iot_hub/models/routing_properties.rb'
    autoload :IotHubQuotaMetricInfoListResult,                    'generated/azure_mgmt_iot_hub/models/iot_hub_quota_metric_info_list_result.rb'
    autoload :MessagingEndpointProperties,                        'generated/azure_mgmt_iot_hub/models/messaging_endpoint_properties.rb'
    autoload :RegistryStatistics,                                 'generated/azure_mgmt_iot_hub/models/registry_statistics.rb'
    autoload :CloudToDeviceProperties,                            'generated/azure_mgmt_iot_hub/models/cloud_to_device_properties.rb'
    autoload :JobResponse,                                        'generated/azure_mgmt_iot_hub/models/job_response.rb'
    autoload :IotHubProperties,                                   'generated/azure_mgmt_iot_hub/models/iot_hub_properties.rb'
    autoload :JobResponseListResult,                              'generated/azure_mgmt_iot_hub/models/job_response_list_result.rb'
    autoload :IotHubCapacity,                                     'generated/azure_mgmt_iot_hub/models/iot_hub_capacity.rb'
    autoload :RoutingServiceBusQueueEndpointProperties,           'generated/azure_mgmt_iot_hub/models/routing_service_bus_queue_endpoint_properties.rb'
    autoload :IotHubSkuDescription,                               'generated/azure_mgmt_iot_hub/models/iot_hub_sku_description.rb'
    autoload :RoutingEndpoints,                                   'generated/azure_mgmt_iot_hub/models/routing_endpoints.rb'
    autoload :EventHubConsumerGroupsListResult,                   'generated/azure_mgmt_iot_hub/models/event_hub_consumer_groups_list_result.rb'
    autoload :StorageEndpointProperties,                          'generated/azure_mgmt_iot_hub/models/storage_endpoint_properties.rb'
    autoload :EventHubConsumerGroupInfo,                          'generated/azure_mgmt_iot_hub/models/event_hub_consumer_group_info.rb'
    autoload :OperationsMonitoringProperties,                     'generated/azure_mgmt_iot_hub/models/operations_monitoring_properties.rb'
    autoload :IotHubSkuDescriptionListResult,                     'generated/azure_mgmt_iot_hub/models/iot_hub_sku_description_list_result.rb'
    autoload :IpFilterRule,                                       'generated/azure_mgmt_iot_hub/models/ip_filter_rule.rb'
    autoload :IotHubDescriptionListResult,                        'generated/azure_mgmt_iot_hub/models/iot_hub_description_list_result.rb'
    autoload :FallbackRouteProperties,                            'generated/azure_mgmt_iot_hub/models/fallback_route_properties.rb'
    autoload :OperationInputs,                                    'generated/azure_mgmt_iot_hub/models/operation_inputs.rb'
    autoload :IotHubSkuInfo,                                      'generated/azure_mgmt_iot_hub/models/iot_hub_sku_info.rb'
    autoload :IotHubNameAvailabilityInfo,                         'generated/azure_mgmt_iot_hub/models/iot_hub_name_availability_info.rb'
    autoload :FeedbackProperties,                                 'generated/azure_mgmt_iot_hub/models/feedback_properties.rb'
    autoload :ExportDevicesRequest,                               'generated/azure_mgmt_iot_hub/models/export_devices_request.rb'
    autoload :RoutingEventHubProperties,                          'generated/azure_mgmt_iot_hub/models/routing_event_hub_properties.rb'
    autoload :ImportDevicesRequest,                               'generated/azure_mgmt_iot_hub/models/import_devices_request.rb'
    autoload :IotHubDescription,                                  'generated/azure_mgmt_iot_hub/models/iot_hub_description.rb'
    autoload :AccessRights,                                       'generated/azure_mgmt_iot_hub/models/access_rights.rb'
    autoload :IpFilterActionType,                                 'generated/azure_mgmt_iot_hub/models/ip_filter_action_type.rb'
    autoload :RoutingSource,                                      'generated/azure_mgmt_iot_hub/models/routing_source.rb'
    autoload :OperationMonitoringLevel,                           'generated/azure_mgmt_iot_hub/models/operation_monitoring_level.rb'
    autoload :Capabilities,                                       'generated/azure_mgmt_iot_hub/models/capabilities.rb'
    autoload :IotHubSku,                                          'generated/azure_mgmt_iot_hub/models/iot_hub_sku.rb'
    autoload :IotHubSkuTier,                                      'generated/azure_mgmt_iot_hub/models/iot_hub_sku_tier.rb'
    autoload :JobType,                                            'generated/azure_mgmt_iot_hub/models/job_type.rb'
    autoload :JobStatus,                                          'generated/azure_mgmt_iot_hub/models/job_status.rb'
    autoload :IotHubScaleType,                                    'generated/azure_mgmt_iot_hub/models/iot_hub_scale_type.rb'
    autoload :IotHubNameUnavailabilityReason,                     'generated/azure_mgmt_iot_hub/models/iot_hub_name_unavailability_reason.rb'
  end
end
