# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes an Operating System disk.
    #
    class ImageOSDisk

      include MsRestAzure

      include MsRest::JSONable
      # @return [OperatingSystemTypes] This property allows you to specify the
      # type of the OS that is included in the disk if creating a VM from a
      # custom image. <br><br> Possible values are: <br><br> **Windows**
      # <br><br> **Linux**. Possible values include: 'Windows', 'Linux'
      attr_accessor :os_type

      # @return [OperatingSystemStateTypes] The OS State. Possible values
      # include: 'Generalized', 'Specialized'
      attr_accessor :os_state

      # @return [SubResource] The snapshot.
      attr_accessor :snapshot

      # @return [SubResource] The managedDisk.
      attr_accessor :managed_disk

      # @return [String] The Virtual Hard Disk.
      attr_accessor :blob_uri

      # @return [CachingTypes] Specifies the caching requirements. <br><br>
      # Possible values are: <br><br> **None** <br><br> **ReadOnly** <br><br>
      # **ReadWrite** <br><br> Default: **None for Standard storage. ReadOnly
      # for Premium storage**. Possible values include: 'None', 'ReadOnly',
      # 'ReadWrite'
      attr_accessor :caching

      # @return [Integer] Specifies the size of empty data disks in gigabytes.
      # This element can be used to overwrite the name of the disk in a virtual
      # machine image. <br><br> This value cannot be larger than 1023 GB
      attr_accessor :disk_size_gb

      # @return [StorageAccountTypes] Specifies the storage account type for
      # the managed disk. Possible values are: Standard_LRS or Premium_LRS.
      # Possible values include: 'Standard_LRS', 'Premium_LRS'
      attr_accessor :storage_account_type


      #
      # Mapper for ImageOSDisk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ImageOSDisk',
          type: {
            name: 'Composite',
            class_name: 'ImageOSDisk',
            model_properties: {
              os_type: {
                required: true,
                serialized_name: 'osType',
                type: {
                  name: 'Enum',
                  module: 'OperatingSystemTypes'
                }
              },
              os_state: {
                required: true,
                serialized_name: 'osState',
                type: {
                  name: 'Enum',
                  module: 'OperatingSystemStateTypes'
                }
              },
              snapshot: {
                required: false,
                serialized_name: 'snapshot',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              managed_disk: {
                required: false,
                serialized_name: 'managedDisk',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              blob_uri: {
                required: false,
                serialized_name: 'blobUri',
                type: {
                  name: 'String'
                }
              },
              caching: {
                required: false,
                serialized_name: 'caching',
                type: {
                  name: 'Enum',
                  module: 'CachingTypes'
                }
              },
              disk_size_gb: {
                required: false,
                serialized_name: 'diskSizeGB',
                type: {
                  name: 'Number'
                }
              },
              storage_account_type: {
                required: false,
                serialized_name: 'storageAccountType',
                type: {
                  name: 'Enum',
                  module: 'StorageAccountTypes'
                }
              }
            }
          }
        }
      end
    end
  end
end
