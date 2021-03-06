=begin
#Spinnaker API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module SwaggerClient
  class V2CanaryConfigControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a canary configuration
    # @param config config
    # @param [Hash] opts the optional parameters
    # @option opts [String] :configuration_account_name configurationAccountName
    # @return [Object]
    def create_canary_config_using_post(config, opts = {})
      data, _status_code, _headers = create_canary_config_using_post_with_http_info(config, opts)
      data
    end

    # Create a canary configuration
    # @param config config
    # @param [Hash] opts the optional parameters
    # @option opts [String] :configuration_account_name configurationAccountName
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def create_canary_config_using_post_with_http_info(config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: V2CanaryConfigControllerApi.create_canary_config_using_post ...'
      end
      # verify the required parameter 'config' is set
      if @api_client.config.client_side_validation && config.nil?
        fail ArgumentError, "Missing the required parameter 'config' when calling V2CanaryConfigControllerApi.create_canary_config_using_post"
      end
      # resource path
      local_var_path = '/v2/canaryConfig'

      # query parameters
      query_params = {}
      query_params[:'configurationAccountName'] = opts[:'configuration_account_name'] if !opts[:'configuration_account_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(config)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V2CanaryConfigControllerApi#create_canary_config_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a canary configuration
    # @param id id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :configuration_account_name configurationAccountName
    # @return [nil]
    def delete_canary_config_using_delete(id, opts = {})
      delete_canary_config_using_delete_with_http_info(id, opts)
      nil
    end

    # Delete a canary configuration
    # @param id id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :configuration_account_name configurationAccountName
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_canary_config_using_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: V2CanaryConfigControllerApi.delete_canary_config_using_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling V2CanaryConfigControllerApi.delete_canary_config_using_delete"
      end
      # resource path
      local_var_path = '/v2/canaryConfig/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'configurationAccountName'] = opts[:'configuration_account_name'] if !opts[:'configuration_account_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V2CanaryConfigControllerApi#delete_canary_config_using_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve a canary configuration by id
    # @param id id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :configuration_account_name configurationAccountName
    # @return [Object]
    def get_canary_config_using_get(id, opts = {})
      data, _status_code, _headers = get_canary_config_using_get_with_http_info(id, opts)
      data
    end

    # Retrieve a canary configuration by id
    # @param id id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :configuration_account_name configurationAccountName
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def get_canary_config_using_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: V2CanaryConfigControllerApi.get_canary_config_using_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling V2CanaryConfigControllerApi.get_canary_config_using_get"
      end
      # resource path
      local_var_path = '/v2/canaryConfig/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'configurationAccountName'] = opts[:'configuration_account_name'] if !opts[:'configuration_account_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V2CanaryConfigControllerApi#get_canary_config_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve a list of canary configurations
    # @param [Hash] opts the optional parameters
    # @option opts [String] :application application
    # @option opts [String] :configuration_account_name configurationAccountName
    # @return [Array<Object>]
    def get_canary_configs_using_get(opts = {})
      data, _status_code, _headers = get_canary_configs_using_get_with_http_info(opts)
      data
    end

    # Retrieve a list of canary configurations
    # @param [Hash] opts the optional parameters
    # @option opts [String] :application application
    # @option opts [String] :configuration_account_name configurationAccountName
    # @return [Array<(Array<Object>, Fixnum, Hash)>] Array<Object> data, response status code and response headers
    def get_canary_configs_using_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: V2CanaryConfigControllerApi.get_canary_configs_using_get ...'
      end
      # resource path
      local_var_path = '/v2/canaryConfig'

      # query parameters
      query_params = {}
      query_params[:'application'] = opts[:'application'] if !opts[:'application'].nil?
      query_params[:'configurationAccountName'] = opts[:'configuration_account_name'] if !opts[:'configuration_account_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Object>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V2CanaryConfigControllerApi#get_canary_configs_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a canary configuration
    # @param id id
    # @param config config
    # @param [Hash] opts the optional parameters
    # @option opts [String] :configuration_account_name configurationAccountName
    # @return [Object]
    def update_canary_config_using_put(id, config, opts = {})
      data, _status_code, _headers = update_canary_config_using_put_with_http_info(id, config, opts)
      data
    end

    # Update a canary configuration
    # @param id id
    # @param config config
    # @param [Hash] opts the optional parameters
    # @option opts [String] :configuration_account_name configurationAccountName
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def update_canary_config_using_put_with_http_info(id, config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: V2CanaryConfigControllerApi.update_canary_config_using_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling V2CanaryConfigControllerApi.update_canary_config_using_put"
      end
      # verify the required parameter 'config' is set
      if @api_client.config.client_side_validation && config.nil?
        fail ArgumentError, "Missing the required parameter 'config' when calling V2CanaryConfigControllerApi.update_canary_config_using_put"
      end
      # resource path
      local_var_path = '/v2/canaryConfig/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'configurationAccountName'] = opts[:'configuration_account_name'] if !opts[:'configuration_account_name'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(config)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V2CanaryConfigControllerApi#update_canary_config_using_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
