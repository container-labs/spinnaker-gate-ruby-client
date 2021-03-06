=begin
#Spinnaker API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module SwaggerClient
  class ReorderPipelinesControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Re-order pipelines
    # @param reorder_pipelines_command reorderPipelinesCommand
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def reorder_pipelines_using_post(reorder_pipelines_command, opts = {})
      data, _status_code, _headers = reorder_pipelines_using_post_with_http_info(reorder_pipelines_command, opts)
      data
    end

    # Re-order pipelines
    # @param reorder_pipelines_command reorderPipelinesCommand
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def reorder_pipelines_using_post_with_http_info(reorder_pipelines_command, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReorderPipelinesControllerApi.reorder_pipelines_using_post ...'
      end
      # verify the required parameter 'reorder_pipelines_command' is set
      if @api_client.config.client_side_validation && reorder_pipelines_command.nil?
        fail ArgumentError, "Missing the required parameter 'reorder_pipelines_command' when calling ReorderPipelinesControllerApi.reorder_pipelines_using_post"
      end
      # resource path
      local_var_path = '/actions/pipelines/reorder'

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
      post_body = @api_client.object_to_http_body(reorder_pipelines_command)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReorderPipelinesControllerApi#reorder_pipelines_using_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
