=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CyberSource::InlineResponse20012ProcessingInformationAuthorizationOptions
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InlineResponse20012ProcessingInformationAuthorizationOptions' do
  before do
    # run before each test
    @instance = CyberSource::InlineResponse20012ProcessingInformationAuthorizationOptions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse20012ProcessingInformationAuthorizationOptions' do
    it 'should create an instance of InlineResponse20012ProcessingInformationAuthorizationOptions' do
      expect(@instance).to be_instance_of(CyberSource::InlineResponse20012ProcessingInformationAuthorizationOptions)
    end
  end
  describe 'test attribute "auth_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end