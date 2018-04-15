=begin
#voyager-server

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v0
Contact: hello@appscode.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Kubernetes::V1beta1ChallengeProvider
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'V1beta1ChallengeProvider' do
  before do
    # run before each test
    @instance = Kubernetes::V1beta1ChallengeProvider.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of V1beta1ChallengeProvider' do
    it 'should create an instance of V1beta1ChallengeProvider' do
      expect(@instance).to be_instance_of(Kubernetes::V1beta1ChallengeProvider)
    end
  end
  describe 'test attribute "dns"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "http"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

