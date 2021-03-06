=begin
#Spinnaker API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module SwaggerClient
  class ClusterControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve a cluster's loadbalancers
    # @param application_name applicationName
    # @param account account
    # @param cluster_name clusterName
    # @param type type
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @return [Array<Object>]
    def get_cluster_load_balancers_using_get(application_name, account, cluster_name, type, opts = {})
      data, _status_code, _headers = get_cluster_load_balancers_using_get_with_http_info(application_name, account, cluster_name, type, opts)
      data
    end

    # Retrieve a cluster&#39;s loadbalancers
    # @param application_name applicationName
    # @param account account
    # @param cluster_name clusterName
    # @param type type
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @return [Array<(Array<Object>, Fixnum, Hash)>] Array<Object> data, response status code and response headers
    def get_cluster_load_balancers_using_get_with_http_info(application_name, account, cluster_name, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClusterControllerApi.get_cluster_load_balancers_using_get ...'
      end
      # verify the required parameter 'application_name' is set
      if @api_client.config.client_side_validation && application_name.nil?
        fail ArgumentError, "Missing the required parameter 'application_name' when calling ClusterControllerApi.get_cluster_load_balancers_using_get"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling ClusterControllerApi.get_cluster_load_balancers_using_get"
      end
      # verify the required parameter 'cluster_name' is set
      if @api_client.config.client_side_validation && cluster_name.nil?
        fail ArgumentError, "Missing the required parameter 'cluster_name' when calling ClusterControllerApi.get_cluster_load_balancers_using_get"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling ClusterControllerApi.get_cluster_load_balancers_using_get"
      end
      # resource path
      local_var_path = '/applications/{application}/clusters/{account}/{clusterName}/{type}/loadBalancers'.sub('{' + 'applicationName' + '}', application_name.to_s).sub('{' + 'account' + '}', account.to_s).sub('{' + 'clusterName' + '}', cluster_name.to_s).sub('{' + 'type' + '}', type.to_s)

      # query parameters
      query_params = {}

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
        @api_client.config.logger.debug "API called: ClusterControllerApi#get_cluster_load_balancers_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve a cluster's details
    # @param application application
    # @param account account
    # @param cluster_name clusterName
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @return [Hash<String, Object>]
    def get_clusters_using_get(application, account, cluster_name, opts = {})
      data, _status_code, _headers = get_clusters_using_get_with_http_info(application, account, cluster_name, opts)
      data
    end

    # Retrieve a cluster&#39;s details
    # @param application application
    # @param account account
    # @param cluster_name clusterName
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @return [Array<(Hash<String, Object>, Fixnum, Hash)>] Hash<String, Object> data, response status code and response headers
    def get_clusters_using_get_with_http_info(application, account, cluster_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClusterControllerApi.get_clusters_using_get ...'
      end
      # verify the required parameter 'application' is set
      if @api_client.config.client_side_validation && application.nil?
        fail ArgumentError, "Missing the required parameter 'application' when calling ClusterControllerApi.get_clusters_using_get"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling ClusterControllerApi.get_clusters_using_get"
      end
      # verify the required parameter 'cluster_name' is set
      if @api_client.config.client_side_validation && cluster_name.nil?
        fail ArgumentError, "Missing the required parameter 'cluster_name' when calling ClusterControllerApi.get_clusters_using_get"
      end
      # resource path
      local_var_path = '/applications/{application}/clusters/{account}/{clusterName}'.sub('{' + 'application' + '}', application.to_s).sub('{' + 'account' + '}', account.to_s).sub('{' + 'clusterName' + '}', cluster_name.to_s)

      # query parameters
      query_params = {}

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
        :return_type => 'Hash<String, Object>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClusterControllerApi#get_clusters_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve a list of clusters for an account
    # @param application application
    # @param account account
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @return [Array<Object>]
    def get_clusters_using_get1(application, account, opts = {})
      data, _status_code, _headers = get_clusters_using_get1_with_http_info(application, account, opts)
      data
    end

    # Retrieve a list of clusters for an account
    # @param application application
    # @param account account
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @return [Array<(Array<Object>, Fixnum, Hash)>] Array<Object> data, response status code and response headers
    def get_clusters_using_get1_with_http_info(application, account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClusterControllerApi.get_clusters_using_get1 ...'
      end
      # verify the required parameter 'application' is set
      if @api_client.config.client_side_validation && application.nil?
        fail ArgumentError, "Missing the required parameter 'application' when calling ClusterControllerApi.get_clusters_using_get1"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling ClusterControllerApi.get_clusters_using_get1"
      end
      # resource path
      local_var_path = '/applications/{application}/clusters/{account}'.sub('{' + 'application' + '}', application.to_s).sub('{' + 'account' + '}', account.to_s)

      # query parameters
      query_params = {}

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
        @api_client.config.logger.debug "API called: ClusterControllerApi#get_clusters_using_get1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve a list of cluster names for an application, grouped by account
    # @param application application
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @return [Hash<String, Object>]
    def get_clusters_using_get2(application, opts = {})
      data, _status_code, _headers = get_clusters_using_get2_with_http_info(application, opts)
      data
    end

    # Retrieve a list of cluster names for an application, grouped by account
    # @param application application
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @return [Array<(Hash<String, Object>, Fixnum, Hash)>] Hash<String, Object> data, response status code and response headers
    def get_clusters_using_get2_with_http_info(application, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClusterControllerApi.get_clusters_using_get2 ...'
      end
      # verify the required parameter 'application' is set
      if @api_client.config.client_side_validation && application.nil?
        fail ArgumentError, "Missing the required parameter 'application' when calling ClusterControllerApi.get_clusters_using_get2"
      end
      # resource path
      local_var_path = '/applications/{application}/clusters'.sub('{' + 'application' + '}', application.to_s)

      # query parameters
      query_params = {}

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
        :return_type => 'Hash<String, Object>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClusterControllerApi#get_clusters_using_get2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve a list of scaling activities for a server group
    # @param application application
    # @param account account
    # @param cluster_name clusterName
    # @param server_group_name serverGroupName
    # @param [Hash] opts the optional parameters
    # @option opts [String] :provider provider (default to aws)
    # @option opts [String] :region region
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @return [Array<Object>]
    def get_scaling_activities_using_get(application, account, cluster_name, server_group_name, opts = {})
      data, _status_code, _headers = get_scaling_activities_using_get_with_http_info(application, account, cluster_name, server_group_name, opts)
      data
    end

    # Retrieve a list of scaling activities for a server group
    # @param application application
    # @param account account
    # @param cluster_name clusterName
    # @param server_group_name serverGroupName
    # @param [Hash] opts the optional parameters
    # @option opts [String] :provider provider
    # @option opts [String] :region region
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @return [Array<(Array<Object>, Fixnum, Hash)>] Array<Object> data, response status code and response headers
    def get_scaling_activities_using_get_with_http_info(application, account, cluster_name, server_group_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClusterControllerApi.get_scaling_activities_using_get ...'
      end
      # verify the required parameter 'application' is set
      if @api_client.config.client_side_validation && application.nil?
        fail ArgumentError, "Missing the required parameter 'application' when calling ClusterControllerApi.get_scaling_activities_using_get"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling ClusterControllerApi.get_scaling_activities_using_get"
      end
      # verify the required parameter 'cluster_name' is set
      if @api_client.config.client_side_validation && cluster_name.nil?
        fail ArgumentError, "Missing the required parameter 'cluster_name' when calling ClusterControllerApi.get_scaling_activities_using_get"
      end
      # verify the required parameter 'server_group_name' is set
      if @api_client.config.client_side_validation && server_group_name.nil?
        fail ArgumentError, "Missing the required parameter 'server_group_name' when calling ClusterControllerApi.get_scaling_activities_using_get"
      end
      # resource path
      local_var_path = '/applications/{application}/clusters/{account}/{clusterName}/serverGroups/{serverGroupName}/scalingActivities'.sub('{' + 'application' + '}', application.to_s).sub('{' + 'account' + '}', account.to_s).sub('{' + 'clusterName' + '}', cluster_name.to_s).sub('{' + 'serverGroupName' + '}', server_group_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'provider'] = opts[:'provider'] if !opts[:'provider'].nil?
      query_params[:'region'] = opts[:'region'] if !opts[:'region'].nil?

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
        @api_client.config.logger.debug "API called: ClusterControllerApi#get_scaling_activities_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve a server group's details
    # @param application application
    # @param account account
    # @param cluster_name clusterName
    # @param server_group_name serverGroupName
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @return [Array<Object>]
    def get_server_groups_using_get(application, account, cluster_name, server_group_name, opts = {})
      data, _status_code, _headers = get_server_groups_using_get_with_http_info(application, account, cluster_name, server_group_name, opts)
      data
    end

    # Retrieve a server group&#39;s details
    # @param application application
    # @param account account
    # @param cluster_name clusterName
    # @param server_group_name serverGroupName
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @return [Array<(Array<Object>, Fixnum, Hash)>] Array<Object> data, response status code and response headers
    def get_server_groups_using_get_with_http_info(application, account, cluster_name, server_group_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClusterControllerApi.get_server_groups_using_get ...'
      end
      # verify the required parameter 'application' is set
      if @api_client.config.client_side_validation && application.nil?
        fail ArgumentError, "Missing the required parameter 'application' when calling ClusterControllerApi.get_server_groups_using_get"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling ClusterControllerApi.get_server_groups_using_get"
      end
      # verify the required parameter 'cluster_name' is set
      if @api_client.config.client_side_validation && cluster_name.nil?
        fail ArgumentError, "Missing the required parameter 'cluster_name' when calling ClusterControllerApi.get_server_groups_using_get"
      end
      # verify the required parameter 'server_group_name' is set
      if @api_client.config.client_side_validation && server_group_name.nil?
        fail ArgumentError, "Missing the required parameter 'server_group_name' when calling ClusterControllerApi.get_server_groups_using_get"
      end
      # resource path
      local_var_path = '/applications/{application}/clusters/{account}/{clusterName}/serverGroups/{serverGroupName}'.sub('{' + 'application' + '}', application.to_s).sub('{' + 'account' + '}', account.to_s).sub('{' + 'clusterName' + '}', cluster_name.to_s).sub('{' + 'serverGroupName' + '}', server_group_name.to_s)

      # query parameters
      query_params = {}

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
        @api_client.config.logger.debug "API called: ClusterControllerApi#get_server_groups_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve a list of server groups for a cluster
    # @param application application
    # @param account account
    # @param cluster_name clusterName
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @return [Array<Object>]
    def get_server_groups_using_get1(application, account, cluster_name, opts = {})
      data, _status_code, _headers = get_server_groups_using_get1_with_http_info(application, account, cluster_name, opts)
      data
    end

    # Retrieve a list of server groups for a cluster
    # @param application application
    # @param account account
    # @param cluster_name clusterName
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @return [Array<(Array<Object>, Fixnum, Hash)>] Array<Object> data, response status code and response headers
    def get_server_groups_using_get1_with_http_info(application, account, cluster_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClusterControllerApi.get_server_groups_using_get1 ...'
      end
      # verify the required parameter 'application' is set
      if @api_client.config.client_side_validation && application.nil?
        fail ArgumentError, "Missing the required parameter 'application' when calling ClusterControllerApi.get_server_groups_using_get1"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling ClusterControllerApi.get_server_groups_using_get1"
      end
      # verify the required parameter 'cluster_name' is set
      if @api_client.config.client_side_validation && cluster_name.nil?
        fail ArgumentError, "Missing the required parameter 'cluster_name' when calling ClusterControllerApi.get_server_groups_using_get1"
      end
      # resource path
      local_var_path = '/applications/{application}/clusters/{account}/{clusterName}/serverGroups'.sub('{' + 'application' + '}', application.to_s).sub('{' + 'account' + '}', account.to_s).sub('{' + 'clusterName' + '}', cluster_name.to_s)

      # query parameters
      query_params = {}

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
        @api_client.config.logger.debug "API called: ClusterControllerApi#get_server_groups_using_get1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve a server group that matches a target coordinate (e.g., newest, ancestor) relative to a cluster
    # `scope` is either a zone or a region
    # @param application application
    # @param account account
    # @param cluster_name clusterName
    # @param cloud_provider cloudProvider
    # @param scope scope
    # @param target target
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :only_enabled onlyEnabled
    # @option opts [BOOLEAN] :validate_oldest validateOldest
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @return [Hash<String, Object>]
    def get_target_server_group_using_get(application, account, cluster_name, cloud_provider, scope, target, opts = {})
      data, _status_code, _headers = get_target_server_group_using_get_with_http_info(application, account, cluster_name, cloud_provider, scope, target, opts)
      data
    end

    # Retrieve a server group that matches a target coordinate (e.g., newest, ancestor) relative to a cluster
    # &#x60;scope&#x60; is either a zone or a region
    # @param application application
    # @param account account
    # @param cluster_name clusterName
    # @param cloud_provider cloudProvider
    # @param scope scope
    # @param target target
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :only_enabled onlyEnabled
    # @option opts [BOOLEAN] :validate_oldest validateOldest
    # @option opts [String] :x_rate_limit_app X-RateLimit-App
    # @return [Array<(Hash<String, Object>, Fixnum, Hash)>] Hash<String, Object> data, response status code and response headers
    def get_target_server_group_using_get_with_http_info(application, account, cluster_name, cloud_provider, scope, target, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClusterControllerApi.get_target_server_group_using_get ...'
      end
      # verify the required parameter 'application' is set
      if @api_client.config.client_side_validation && application.nil?
        fail ArgumentError, "Missing the required parameter 'application' when calling ClusterControllerApi.get_target_server_group_using_get"
      end
      # verify the required parameter 'account' is set
      if @api_client.config.client_side_validation && account.nil?
        fail ArgumentError, "Missing the required parameter 'account' when calling ClusterControllerApi.get_target_server_group_using_get"
      end
      # verify the required parameter 'cluster_name' is set
      if @api_client.config.client_side_validation && cluster_name.nil?
        fail ArgumentError, "Missing the required parameter 'cluster_name' when calling ClusterControllerApi.get_target_server_group_using_get"
      end
      # verify the required parameter 'cloud_provider' is set
      if @api_client.config.client_side_validation && cloud_provider.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_provider' when calling ClusterControllerApi.get_target_server_group_using_get"
      end
      # verify the required parameter 'scope' is set
      if @api_client.config.client_side_validation && scope.nil?
        fail ArgumentError, "Missing the required parameter 'scope' when calling ClusterControllerApi.get_target_server_group_using_get"
      end
      # verify the required parameter 'target' is set
      if @api_client.config.client_side_validation && target.nil?
        fail ArgumentError, "Missing the required parameter 'target' when calling ClusterControllerApi.get_target_server_group_using_get"
      end
      # resource path
      local_var_path = '/applications/{application}/clusters/{account}/{clusterName}/{cloudProvider}/{scope}/serverGroups/target/{target}'.sub('{' + 'application' + '}', application.to_s).sub('{' + 'account' + '}', account.to_s).sub('{' + 'clusterName' + '}', cluster_name.to_s).sub('{' + 'cloudProvider' + '}', cloud_provider.to_s).sub('{' + 'scope' + '}', scope.to_s).sub('{' + 'target' + '}', target.to_s)

      # query parameters
      query_params = {}
      query_params[:'onlyEnabled'] = opts[:'only_enabled'] if !opts[:'only_enabled'].nil?
      query_params[:'validateOldest'] = opts[:'validate_oldest'] if !opts[:'validate_oldest'].nil?

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
        :return_type => 'Hash<String, Object>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClusterControllerApi#get_target_server_group_using_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
