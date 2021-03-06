# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Properties of a daily schedule.
    #
    class DayDetailsFragment

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The time of day the schedule will occur.
      attr_accessor :time


      #
      # Mapper for DayDetailsFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DayDetailsFragment',
          type: {
            name: 'Composite',
            class_name: 'DayDetailsFragment',
            model_properties: {
              time: {
                required: false,
                serialized_name: 'time',
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
