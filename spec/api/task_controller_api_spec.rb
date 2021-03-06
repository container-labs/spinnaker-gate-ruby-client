=begin
#Spinnaker API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::TaskControllerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TaskControllerApi' do
  before do
    # run before each test
    @instance = SwaggerClient::TaskControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TaskControllerApi' do
    it 'should create an instance of TaskControllerApi' do
      expect(@instance).to be_instance_of(SwaggerClient::TaskControllerApi)
    end
  end

  # unit tests for cancel_task_using_put1
  # Cancel task
  # @param id id
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Object>]
  describe 'cancel_task_using_put1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_tasks_using_put
  # Cancel tasks
  # @param ids ids
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Object>]
  describe 'cancel_tasks_using_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_task_using_delete
  # Delete task
  # @param id id
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Object>]
  describe 'delete_task_using_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_task_details_using_get1
  # Get task details
  # @param id id
  # @param task_details_id taskDetailsId
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_rate_limit_app X-RateLimit-App
  # @return [Hash<String, Object>]
  describe 'get_task_details_using_get1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_task_using_get1
  # Get task
  # @param id id
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Object>]
  describe 'get_task_using_get1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for task_using_post1
  # Create task
  # @param map map
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Object>]
  describe 'task_using_post1 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
