# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  #
  # Monitor Management Client
  #
  class DiagnosticSettingsOperations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the DiagnosticSettingsOperations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [MonitorManagementClient] reference to the MonitorManagementClient
    attr_reader :client

    #
    # Gets the active diagnostic settings for the specified resource.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param name [String] The name of the diagnostic setting.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DiagnosticSettingsResource] operation results.
    #
    def get(resource_uri, name, custom_headers = nil)
      response = get_async(resource_uri, name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the active diagnostic settings for the specified resource.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param name [String] The name of the diagnostic setting.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_uri, name, custom_headers = nil)
      get_async(resource_uri, name, custom_headers).value!
    end

    #
    # Gets the active diagnostic settings for the specified resource.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param name [String] The name of the diagnostic setting.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_uri, name, custom_headers = nil)
      fail ArgumentError, 'resource_uri is nil' if resource_uri.nil?
      api_version = '2017-05-01-preview'
      fail ArgumentError, 'name is nil' if name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{resourceUri}/providers/microsoft.insights/diagnosticSettings/{name}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceUri' => resource_uri,'name' => name},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Monitor::Models::DiagnosticSettingsResource.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Creates or updates diagnostic settings for the specified resource.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param parameters [DiagnosticSettingsResource] Parameters supplied to the
    # operation.
    # @param name [String] The name of the diagnostic setting.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DiagnosticSettingsResource] operation results.
    #
    def create_or_update(resource_uri, parameters, name, custom_headers = nil)
      response = create_or_update_async(resource_uri, parameters, name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates diagnostic settings for the specified resource.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param parameters [DiagnosticSettingsResource] Parameters supplied to the
    # operation.
    # @param name [String] The name of the diagnostic setting.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_uri, parameters, name, custom_headers = nil)
      create_or_update_async(resource_uri, parameters, name, custom_headers).value!
    end

    #
    # Creates or updates diagnostic settings for the specified resource.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param parameters [DiagnosticSettingsResource] Parameters supplied to the
    # operation.
    # @param name [String] The name of the diagnostic setting.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_uri, parameters, name, custom_headers = nil)
      fail ArgumentError, 'resource_uri is nil' if resource_uri.nil?
      api_version = '2017-05-01-preview'
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, 'name is nil' if name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::Monitor::Models::DiagnosticSettingsResource.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '{resourceUri}/providers/microsoft.insights/diagnosticSettings/{name}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceUri' => resource_uri,'name' => name},
          query_params: {'api-version' => api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Monitor::Models::DiagnosticSettingsResource.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Deletes existing diagnostic settings for the specified resource.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param name [String] The name of the diagnostic setting.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_uri, name, custom_headers = nil)
      response = delete_async(resource_uri, name, custom_headers).value!
      nil
    end

    #
    # Deletes existing diagnostic settings for the specified resource.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param name [String] The name of the diagnostic setting.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_uri, name, custom_headers = nil)
      delete_async(resource_uri, name, custom_headers).value!
    end

    #
    # Deletes existing diagnostic settings for the specified resource.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param name [String] The name of the diagnostic setting.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_uri, name, custom_headers = nil)
      fail ArgumentError, 'resource_uri is nil' if resource_uri.nil?
      api_version = '2017-05-01-preview'
      fail ArgumentError, 'name is nil' if name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{resourceUri}/providers/microsoft.insights/diagnosticSettings/{name}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceUri' => resource_uri,'name' => name},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Gets the active diagnostic settings list for the specified resource.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DiagnosticSettingsResourceCollection] operation results.
    #
    def list(resource_uri, custom_headers = nil)
      response = list_async(resource_uri, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the active diagnostic settings list for the specified resource.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_uri, custom_headers = nil)
      list_async(resource_uri, custom_headers).value!
    end

    #
    # Gets the active diagnostic settings list for the specified resource.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_uri, custom_headers = nil)
      fail ArgumentError, 'resource_uri is nil' if resource_uri.nil?
      api_version = '2017-05-01-preview'


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{resourceUri}/providers/microsoft.insights/diagnosticSettings'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceUri' => resource_uri},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Monitor::Models::DiagnosticSettingsResourceCollection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
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
