=begin
#Spinnaker API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module SwaggerClient
  class ServerGroupControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve a server group's details
    # @param application_name applicationName
    # @param account account
    # @param region region
    # @param server_group_name serverGroupName
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @option opts [String] :include_details includeDetails (default to true)
    # @return [Object]
    def get_server_group_details_using_get(application_name, account, region, server_group_name, opts = {})
      data, _status_code, _headers = get_server_group_details_using_get_with_http_info(application_name, account, region, server_group_name, opts)
      data
    end

    # Retrieve a server group&#39;s details
    # @param application_name applicationName
    # @param account account
    # @param region region
    # @param server_group_name serverGroupName
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @option opts [String] :include_details includeDetails
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def get_server_group_details_using_get_with_http_info(application_name, account, region, server_group_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerGroupControllerApi.get_server_group_details_using_get ...'
      end
      # verify the required parameter 'application_name' is set
      if @api_client.config.client_side_validation && application_name.nil?
        fail ArgumentError, "Missing the required parameter 'application_name' when calling ServerGroupControllerApi.get_server_group_details_using_get"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling ServerGroupControllerApi.get_server_group_details_using_get"
      end
      # verify the required parameter 'region' is set
      if @api_client.config.client_side_validation && region.nil?
        fail ArgumentError, "Missing the required parameter 'region' when calling ServerGroupControllerApi.get_server_group_details_using_get"
      end
      # verify the required parameter 'server_group_name' is set
      if @api_client.config.client_side_validation && server_group_name.nil?
        fail ArgumentError, "Missing the required parameter 'server_group_name' when calling ServerGroupControllerApi.get_server_group_details_using_get"
      end
      # resource path
      local_var_path = '/applications/{applicationName}/serverGroups/{account}/{region}/{serverGroupName}'.sub('{' + 'applicationName' + '}', application_name.to_s).sub('{' + 'account' + '}', account.to_s).sub('{' + 'region' + '}', region.to_s).sub('{' + 'serverGroupName' + '}', server_group_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'includeDetails'] = opts[:'include_details'] if !opts[:'include_details'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-RateLimit-App'] = opts[:'x_rate_limit_app'] if !opts[:'x_rate_limit_app'].nil?

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
        @api_client.config.logger.debug "API called: ServerGroupControllerApi#get_server_group_details_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve a list of server groups for a given application
    # @param application_name applicationName
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand expand (default to false)
    # @option opts [String] :cloud_provider cloudProvider
    # @option opts [String] :clusters clusters
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @return [Array<Object>]
    def get_server_groups_for_application_using_get(application_name, opts = {})
      data, _status_code, _headers = get_server_groups_for_application_using_get_with_http_info(application_name, opts)
      data
    end

    # Retrieve a list of server groups for a given application
    # @param application_name applicationName
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand expand
    # @option opts [String] :cloud_provider cloudProvider
    # @option opts [String] :clusters clusters
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @return [Array<(Array<Object>, Fixnum, Hash)>] Array<Object> data, response status code and response headers
    def get_server_groups_for_application_using_get_with_http_info(application_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServerGroupControllerApi.get_server_groups_for_application_using_get ...'
      end
      # verify the required parameter 'application_name' is set
      if @api_client.config.client_side_validation && application_name.nil?
        fail ArgumentError, "Missing the required parameter 'application_name' when calling ServerGroupControllerApi.get_server_groups_for_application_using_get"
      end
      # resource path
      local_var_path = '/applications/{applicationName}/serverGroups'.sub('{' + 'applicationName' + '}', application_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?
      query_params[:'cloudProvider'] = opts[:'cloud_provider'] if !opts[:'cloud_provider'].nil?
      query_params[:'clusters'] = opts[:'clusters'] if !opts[:'clusters'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'X-RateLimit-App'] = opts[:'x_rate_limit_app'] if !opts[:'x_rate_limit_app'].nil?

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
        @api_client.config.logger.debug "API called: ServerGroupControllerApi#get_server_groups_for_application_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
