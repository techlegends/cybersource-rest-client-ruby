=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::InstrumentIdentifiersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InstrumentIdentifiersApi' do
  before do
    # run before each test
    @instance = CyberSource::InstrumentIdentifiersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InstrumentIdentifiersApi' do
    it 'should create an instance of InstrumentIdentifiersApi' do
      expect(@instance).to be_instance_of(CyberSource::InstrumentIdentifiersApi)
    end
  end

  # unit tests for tms_v1_instrumentidentifiers_post
  # Create an Instrument Identifier
  # @param profile_id The id of a profile containing user specific TMS configuration.
  # @param body Please specify either a Card or Bank Account.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20010]
  describe 'tms_v1_instrumentidentifiers_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
