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

# Unit tests for SwaggerClient::GetCharactersCharacterIdKillmailsRecent200Ok
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetCharactersCharacterIdKillmailsRecent200Ok' do
  before do
    # run before each test
    @instance = SwaggerClient::GetCharactersCharacterIdKillmailsRecent200Ok.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetCharactersCharacterIdKillmailsRecent200Ok' do
    it 'should create an instance of GetCharactersCharacterIdKillmailsRecent200Ok' do
      expect(@instance).to be_instance_of(SwaggerClient::GetCharactersCharacterIdKillmailsRecent200Ok)
    end
  end
  describe 'test attribute "killmail_hash"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "killmail_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
