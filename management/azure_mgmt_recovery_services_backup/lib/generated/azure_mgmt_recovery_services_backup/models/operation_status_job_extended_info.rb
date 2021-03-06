# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.22.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Operation status job extended info.
    #
    class OperationStatusJobExtendedInfo < OperationStatusExtendedInfo

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @objectType = "OperationStatusJobExtendedInfo"
      end

      attr_accessor :objectType

      # @return [String] ID of the job created for this protected item.
      attr_accessor :job_id


      #
      # Mapper for OperationStatusJobExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationStatusJobExtendedInfo',
          type: {
            name: 'Composite',
            class_name: 'OperationStatusJobExtendedInfo',
            model_properties: {
              objectType: {
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              job_id: {
                required: false,
                serialized_name: 'jobId',
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
