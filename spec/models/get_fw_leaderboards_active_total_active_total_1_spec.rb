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

# Unit tests for SwaggerClient::GetFwLeaderboardsActiveTotalActiveTotal1
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GetFwLeaderboardsActiveTotalActiveTotal1' do
  before do
    # run before each test
    @instance = SwaggerClient::GetFwLeaderboardsActiveTotalActiveTotal1.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GetFwLeaderboardsActiveTotalActiveTotal1' do
    it 'should create an instance of GetFwLeaderboardsActiveTotalActiveTotal1' do
      expect(@instance).to be_instance_of(SwaggerClient::GetFwLeaderboardsActiveTotalActiveTotal1)
    end
  end
  describe 'test attribute "amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "faction_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
