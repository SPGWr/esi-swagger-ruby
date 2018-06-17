=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::GetCorporationsCorporationIdShareholders200Ok
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetCorporationsCorporationIdShareholders200Ok' do
  before do
    # run before each test
    @instance = SwaggerClient::GetCorporationsCorporationIdShareholders200Ok.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetCorporationsCorporationIdShareholders200Ok' do
    it 'should create an instance of GetCorporationsCorporationIdShareholders200Ok' do
      expect(@instance).to be_instance_of(SwaggerClient::GetCorporationsCorporationIdShareholders200Ok)
    end
  end
  describe 'test attribute "share_count"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "shareholder_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "shareholder_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["character", "corporation"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.shareholder_type = value }.not_to raise_error
      # end
    end
  end

end
