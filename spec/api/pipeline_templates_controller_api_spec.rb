=begin
#Spinnaker API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::PipelineTemplatesControllerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PipelineTemplatesControllerApi' do
  before do
    # run before each test
    @instance = SwaggerClient::PipelineTemplatesControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PipelineTemplatesControllerApi' do
    it 'should create an instance of PipelineTemplatesControllerApi' do
      expect(@instance).to be_instance_of(SwaggerClient::PipelineTemplatesControllerApi)
    end
  end

  # unit tests for create_using_post
  # Create a pipeline template.
  # @param pipeline_template pipelineTemplate
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create_using_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_using_delete
  # Delete a pipeline template.
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :application application
  # @return [Hash<String, Object>]
  describe 'delete_using_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_using_get
  # Get a pipeline template.
  # @param id id
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Object>]
  describe 'get_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_pipeline_template_dependents_using_get
  # List all pipelines that implement a pipeline template
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :recursive recursive
  # @return [Array<Object>]
  describe 'list_pipeline_template_dependents_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_using_get
  # List pipeline templates.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :scopes scopes
  # @return [Array<Object>]
  describe 'list_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for resolve_templates_using_get
  # Resolve a pipeline template.
  # @param source source
  # @param [Hash] opts the optional parameters
  # @option opts [String] :execution_id executionId
  # @option opts [String] :pipeline_config_id pipelineConfigId
  # @return [Hash<String, Object>]
  describe 'resolve_templates_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_using_post
  # Update a pipeline template.
  # @param id id
  # @param pipeline_template pipelineTemplate
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :skip_plan_dependents skipPlanDependents
  # @return [nil]
  describe 'update_using_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
