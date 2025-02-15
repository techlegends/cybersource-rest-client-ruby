=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CyberSource::TssV2TransactionsGet200ResponseClientReferenceInformationPartner
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TssV2TransactionsGet200ResponseClientReferenceInformationPartner' do
  before do
    # run before each test
    @instance = CyberSource::TssV2TransactionsGet200ResponseClientReferenceInformationPartner.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TssV2TransactionsGet200ResponseClientReferenceInformationPartner' do
    it 'should create an instance of TssV2TransactionsGet200ResponseClientReferenceInformationPartner' do
      expect(@instance).to be_instance_of(CyberSource::TssV2TransactionsGet200ResponseClientReferenceInformationPartner)
    end
  end
  describe 'test attribute "solution_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "third_party_certification_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
