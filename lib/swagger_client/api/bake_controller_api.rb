=begin
#Spinnaker API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module SwaggerClient
  class BakeControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve a list of available bakery base images for a given cloud provider
    # @param cloud_provider cloudProvider
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def bake_options_using_get(cloud_provider, opts = {})
      data, _status_code, _headers = bake_options_using_get_with_http_info(cloud_provider, opts)
      data
    end

    # Retrieve a list of available bakery base images for a given cloud provider
    # @param cloud_provider cloudProvider
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def bake_options_using_get_with_http_info(cloud_provider, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BakeControllerApi.bake_options_using_get ...'
      end
      # verify the required parameter 'cloud_provider' is set
      if @api_client.config.client_side_validation && cloud_provider.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_provider' when calling BakeControllerApi.bake_options_using_get"
      end
      # resource path
      local_var_path = '/bakery/options/{cloudProvider}'.sub('{' + 'cloudProvider' + '}', cloud_provider.to_s)

      # query parameters
      query_params = {}

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
        @api_client.config.logger.debug "API called: BakeControllerApi#bake_options_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve a list of available bakery base images, grouped by cloud provider
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def bake_options_using_get1(opts = {})
      data, _status_code, _headers = bake_options_using_get1_with_http_info(opts)
      data
    end

    # Retrieve a list of available bakery base images, grouped by cloud provider
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def bake_options_using_get1_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BakeControllerApi.bake_options_using_get1 ...'
      end
      # resource path
      local_var_path = '/bakery/options'

      # query parameters
      query_params = {}

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
        @api_client.config.logger.debug "API called: BakeControllerApi#bake_options_using_get1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve the logs for a given bake
    # @param region region
    # @param status_id statusId
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def lookup_logs_using_get(region, status_id, opts = {})
      data, _status_code, _headers = lookup_logs_using_get_with_http_info(region, status_id, opts)
      data
    end

    # Retrieve the logs for a given bake
    # @param region region
    # @param status_id statusId
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def lookup_logs_using_get_with_http_info(region, status_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BakeControllerApi.lookup_logs_using_get ...'
      end
      # verify the required parameter 'region' is set
      if @api_client.config.client_side_validation && region.nil?
        fail ArgumentError, "Missing the required parameter 'region' when calling BakeControllerApi.lookup_logs_using_get"
      end
      # verify the required parameter 'status_id' is set
      if @api_client.config.client_side_validation && status_id.nil?
        fail ArgumentError, "Missing the required parameter 'status_id' when calling BakeControllerApi.lookup_logs_using_get"
      end
      # resource path
      local_var_path = '/bakery/logs/{region}/{statusId}'.sub('{' + 'region' + '}', region.to_s).sub('{' + 'statusId' + '}', status_id.to_s)

      # query parameters
      query_params = {}

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
        @api_client.config.logger.debug "API called: BakeControllerApi#lookup_logs_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
