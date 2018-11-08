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

# Unit tests for CyberSource::TssV2TransactionsGet200ResponseOrderInformationShippingDetails
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TssV2TransactionsGet200ResponseOrderInformationShippingDetails' do
  before do
    # run before each test
    @instance = CyberSource::TssV2TransactionsGet200ResponseOrderInformationShippingDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TssV2TransactionsGet200ResponseOrderInformationShippingDetails' do
    it 'should create an instance of TssV2TransactionsGet200ResponseOrderInformationShippingDetails' do
      expect(@instance).to be_instance_of(CyberSource::TssV2TransactionsGet200ResponseOrderInformationShippingDetails)
    end
  end
  describe 'test attribute "gift_wrap"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "shipping_method"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end