# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes an available Compute SKU.
    #
    class ResourceSku

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The type of resource the SKU applies to.
      attr_accessor :resource_type

      # @return [String] The name of SKU.
      attr_accessor :name

      # @return [String] Specifies the tier of virtual machines in a scale
      # set.<br /><br /> Possible Values:<br /><br /> **Standard**<br /><br />
      # **Basic**
      attr_accessor :tier

      # @return [String] The Size of the SKU.
      attr_accessor :size

      # @return [String] The Family of this particular SKU.
      attr_accessor :family

      # @return [String] The Kind of resources that are supported in this SKU.
      attr_accessor :kind

      # @return [ResourceSkuCapacity] Specifies the number of virtual machines
      # in the scale set.
      attr_accessor :capacity

      # @return [Array<String>] The set of locations that the SKU is available.
      attr_accessor :locations

      # @return [Array<String>] The api versions that support this SKU.
      attr_accessor :api_versions

      # @return [Array<ResourceSkuCosts>] Metadata for retrieving price info.
      attr_accessor :costs

      # @return [Array<ResourceSkuCapabilities>] A name value pair to describe
      # the capability.
      attr_accessor :capabilities

      # @return [Array<ResourceSkuRestrictions>] The restrictions because of
      # which SKU cannot be used. This is empty if there are no restrictions.
      attr_accessor :restrictions


      #
      # Mapper for ResourceSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceSku',
          type: {
            name: 'Composite',
            class_name: 'ResourceSku',
            model_properties: {
              resource_type: {
                required: false,
                read_only: true,
                serialized_name: 'resourceType',
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
              tier: {
                required: false,
                read_only: true,
                serialized_name: 'tier',
                type: {
                  name: 'String'
                }
              },
              size: {
                required: false,
                read_only: true,
                serialized_name: 'size',
                type: {
                  name: 'String'
                }
              },
              family: {
                required: false,
                read_only: true,
                serialized_name: 'family',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                read_only: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                required: false,
                read_only: true,
                serialized_name: 'capacity',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSkuCapacity'
                }
              },
              locations: {
                required: false,
                read_only: true,
                serialized_name: 'locations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              api_versions: {
                required: false,
                read_only: true,
                serialized_name: 'apiVersions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              costs: {
                required: false,
                read_only: true,
                serialized_name: 'costs',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ResourceSkuCostsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceSkuCosts'
                      }
                  }
                }
              },
              capabilities: {
                required: false,
                read_only: true,
                serialized_name: 'capabilities',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ResourceSkuCapabilitiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceSkuCapabilities'
                      }
                  }
                }
              },
              restrictions: {
                required: false,
                read_only: true,
                serialized_name: 'restrictions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ResourceSkuRestrictionsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceSkuRestrictions'
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
