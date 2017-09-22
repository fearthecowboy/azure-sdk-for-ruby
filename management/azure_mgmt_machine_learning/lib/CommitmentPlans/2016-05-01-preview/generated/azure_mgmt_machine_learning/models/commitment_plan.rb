# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning::CommitmentPlans::Api_2016_05_01_preview
  module Models
    #
    # An Azure ML commitment plan resource.
    #
    class CommitmentPlan < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] An entity tag used to enforce optimistic concurrency.
      attr_accessor :etag

      # @return [CommitmentPlanProperties] The commitment plan properties.
      attr_accessor :properties

      # @return [ResourceSku] The commitment plan SKU.
      attr_accessor :sku


      #
      # Mapper for CommitmentPlan class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CommitmentPlan',
          type: {
            name: 'Composite',
            class_name: 'CommitmentPlan',
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
              location: {
                required: true,
                serialized_name: 'location',
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
              etag: {
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                read_only: true,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'CommitmentPlanProperties'
                }
              },
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSku'
                }
              }
            }
          }
        }
      end
    end
  end
end