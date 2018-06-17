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

# Unit tests for SwaggerClient::GetCharactersCharacterIdClonesHomeLocation
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetCharactersCharacterIdClonesHomeLocation' do
  before do
    # run before each test
    @instance = SwaggerClient::GetCharactersCharacterIdClonesHomeLocation.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetCharactersCharacterIdClonesHomeLocation' do
    it 'should create an instance of GetCharactersCharacterIdClonesHomeLocation' do
      expect(@instance).to be_instance_of(SwaggerClient::GetCharactersCharacterIdClonesHomeLocation)
    end
  end
  describe 'test attribute "location_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "location_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["station", "structure"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.location_type = value }.not_to raise_error
      # end
    end
  end

end
