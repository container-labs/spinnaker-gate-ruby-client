=begin
#Spinnaker API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ClusterControllerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ClusterControllerApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ClusterControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClusterControllerApi' do
    it 'should create an instance of ClusterControllerApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ClusterControllerApi)
    end
  end

  # unit tests for get_cluster_load_balancers_using_get
  # Retrieve a cluster&#39;s loadbalancers
  # @param application_name applicationName
  # @param account account
  # @param cluster_name clusterName
  # @param type type
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_rate_limit_app X-RateLimit-App
  # @return [Array<Object>]
  describe 'get_cluster_load_balancers_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_clusters_using_get
  # Retrieve a cluster&#39;s details
  # @param application application
  # @param account account
  # @param cluster_name clusterName
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_rate_limit_app X-RateLimit-App
  # @return [Hash<String, Object>]
  describe 'get_clusters_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_clusters_using_get1
  # Retrieve a list of clusters for an account
  # @param application application
  # @param account account
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_rate_limit_app X-RateLimit-App
  # @return [Array<Object>]
  describe 'get_clusters_using_get1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_clusters_using_get2
  # Retrieve a list of cluster names for an application, grouped by account
  # @param application application
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_rate_limit_app X-RateLimit-App
  # @return [Hash<String, Object>]
  describe 'get_clusters_using_get2 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_scaling_activities_using_get
  # Retrieve a list of scaling activities for a server group
  # @param application application
  # @param account account
  # @param cluster_name clusterName
  # @param server_group_name serverGroupName
  # @param [Hash] opts the optional parameters
  # @option opts [String] :provider provider
  # @option opts [String] :region region
  # @option opts [String] :x_rate_limit_app X-RateLimit-App
  # @return [Array<Object>]
  describe 'get_scaling_activities_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_server_groups_using_get
  # Retrieve a server group&#39;s details
  # @param application application
  # @param account account
  # @param cluster_name clusterName
  # @param server_group_name serverGroupName
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_rate_limit_app X-RateLimit-App
  # @return [Array<Object>]
  describe 'get_server_groups_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_server_groups_using_get1
  # Retrieve a list of server groups for a cluster
  # @param application application
  # @param account account
  # @param cluster_name clusterName
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_rate_limit_app X-RateLimit-App
  # @return [Array<Object>]
  describe 'get_server_groups_using_get1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_target_server_group_using_get
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
  # @return [Hash<String, Object>]
  describe 'get_target_server_group_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end