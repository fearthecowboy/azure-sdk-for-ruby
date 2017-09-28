# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # An action group resource.
    #
    class ActionGroupResource < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The short name of the action group. This will be used
      # in SMS messages.
      attr_accessor :group_short_name

      # @return [Boolean] Indicates whether this action group is enabled. If an
      # action group is not enabled, then none of its receivers will receive
      # communications. Default value: true .
      attr_accessor :enabled

      # @return [Array<EmailReceiver>] The list of email receivers that are
      # part of this action group.
      attr_accessor :email_receivers

      # @return [Array<SmsReceiver>] The list of SMS receivers that are part of
      # this action group.
      attr_accessor :sms_receivers

      # @return [Array<WebhookReceiver>] The list of webhook receivers that are
      # part of this action group.
      attr_accessor :webhook_receivers


      #
      # Mapper for ActionGroupResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ActionGroupResource',
          type: {
            name: 'Composite',
            class_name: 'ActionGroupResource',
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
              group_short_name: {
                required: true,
                serialized_name: 'properties.groupShortName',
                constraints: {
                  MaxLength: 15
                },
                type: {
                  name: 'String'
                }
              },
              enabled: {
                required: true,
                serialized_name: 'properties.enabled',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              email_receivers: {
                required: false,
                serialized_name: 'properties.emailReceivers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'EmailReceiverElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EmailReceiver'
                      }
                  }
                }
              },
              sms_receivers: {
                required: false,
                serialized_name: 'properties.smsReceivers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SmsReceiverElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SmsReceiver'
                      }
                  }
                }
              },
              webhook_receivers: {
                required: false,
                serialized_name: 'properties.webhookReceivers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'WebhookReceiverElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WebhookReceiver'
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