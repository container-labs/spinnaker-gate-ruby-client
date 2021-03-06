=begin
#Spinnaker API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::AuthControllerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthControllerApi' do
  before do
    # run before each test
    @instance = SwaggerClient::AuthControllerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthControllerApi' do
    it 'should create an instance of AuthControllerApi' do
      expect(@instance).to be_instance_of(SwaggerClient::AuthControllerApi)
    end
  end

  # unit tests for get_service_accounts_using_get
  # Get service accounts
  # @param [Hash] opts the optional parameters
  # @return [Array<Object>]
  describe 'get_service_accounts_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for logged_out_using_get
  # Get logged out message
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'logged_out_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for redirect_using_get
  # Redirect to Deck
  # @param to to
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'redirect_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for sync_using_post
  # Sync user roles
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'sync_using_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for user_using_get
  # Get user
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'user_using_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
