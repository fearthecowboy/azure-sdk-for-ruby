# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  #
  # The DevTest Labs Client.
  #
  class PolicySet
    include Azure::ARM::DevTestLabs::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the PolicySet class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [DevTestLabsClient] reference to the DevTestLabsClient
    attr_reader :client

    #
    # Evaluates Lab Policy.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the policy set.
    # @param evaluate_policies_request [EvaluatePoliciesRequest]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [EvaluatePoliciesResponse] operation results.
    #
    def evaluate_policies(resource_group_name, lab_name, name, evaluate_policies_request, custom_headers = nil)
      response = evaluate_policies_async(resource_group_name, lab_name, name, evaluate_policies_request, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Evaluates Lab Policy.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the policy set.
    # @param evaluate_policies_request [EvaluatePoliciesRequest]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def evaluate_policies_with_http_info(resource_group_name, lab_name, name, evaluate_policies_request, custom_headers = nil)
      evaluate_policies_async(resource_group_name, lab_name, name, evaluate_policies_request, custom_headers).value!
    end

    #
    # Evaluates Lab Policy.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the policy set.
    # @param evaluate_policies_request [EvaluatePoliciesRequest]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def evaluate_policies_async(resource_group_name, lab_name, name, evaluate_policies_request, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'lab_name is nil' if lab_name.nil?
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, 'evaluate_policies_request is nil' if evaluate_policies_request.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = EvaluatePoliciesRequest.mapper()
      request_content = @client.serialize(request_mapper,  evaluate_policies_request, 'evaluate_policies_request')
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/policysets/{name}/evaluatePolicies'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'labName' => lab_name,'name' => name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :post, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = EvaluatePoliciesResponse.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end