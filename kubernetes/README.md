# kubernetes

Kubernetes - the Ruby gem for the voyager-server

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v0
- Package version: 1.0.0-alpha1
- Build package: io.swagger.codegen.languages.RubyClientCodegen
For more information, please visit [https://appscode.com](https://appscode.com)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build kubernetes.gemspec
```

Then either install the gem locally:

```shell
gem install ./kubernetes-1.0.0-alpha1.gem
```
(for development, run `gem install --dev ./kubernetes-1.0.0-alpha1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'kubernetes', '~> 1.0.0-alpha1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/kubernetes-client/ruby, then add the following in the Gemfile:

    gem 'kubernetes', :git => 'https://github.com/kubernetes-client/ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'kubernetes'

api_instance = Kubernetes::ApisApi.new

begin
  result = api_instance.get_api_versions
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling ApisApi->get_api_versions: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Kubernetes::ApisApi* | [**get_api_versions**](docs/ApisApi.md#get_api_versions) | **GET** /apis/ | 
*Kubernetes::VoyagerAppscodeComApi* | [**get_api_group**](docs/VoyagerAppscodeComApi.md#get_api_group) | **GET** /apis/voyager.appscode.com/ | 
*Kubernetes::VoyagerAppscodeComV1beta1Api* | [**create_namespaced_certificate**](docs/VoyagerAppscodeComV1beta1Api.md#create_namespaced_certificate) | **POST** /apis/voyager.appscode.com/v1beta1/namespaces/{namespace}/certificates | 
*Kubernetes::VoyagerAppscodeComV1beta1Api* | [**create_namespaced_ingress**](docs/VoyagerAppscodeComV1beta1Api.md#create_namespaced_ingress) | **POST** /apis/voyager.appscode.com/v1beta1/namespaces/{namespace}/ingresses | 
*Kubernetes::VoyagerAppscodeComV1beta1Api* | [**delete_collection_namespaced_certificate**](docs/VoyagerAppscodeComV1beta1Api.md#delete_collection_namespaced_certificate) | **DELETE** /apis/voyager.appscode.com/v1beta1/namespaces/{namespace}/certificates | 
*Kubernetes::VoyagerAppscodeComV1beta1Api* | [**delete_collection_namespaced_ingress**](docs/VoyagerAppscodeComV1beta1Api.md#delete_collection_namespaced_ingress) | **DELETE** /apis/voyager.appscode.com/v1beta1/namespaces/{namespace}/ingresses | 
*Kubernetes::VoyagerAppscodeComV1beta1Api* | [**delete_namespaced_certificate**](docs/VoyagerAppscodeComV1beta1Api.md#delete_namespaced_certificate) | **DELETE** /apis/voyager.appscode.com/v1beta1/namespaces/{namespace}/certificates/{name} | 
*Kubernetes::VoyagerAppscodeComV1beta1Api* | [**delete_namespaced_ingress**](docs/VoyagerAppscodeComV1beta1Api.md#delete_namespaced_ingress) | **DELETE** /apis/voyager.appscode.com/v1beta1/namespaces/{namespace}/ingresses/{name} | 
*Kubernetes::VoyagerAppscodeComV1beta1Api* | [**get_api_resources**](docs/VoyagerAppscodeComV1beta1Api.md#get_api_resources) | **GET** /apis/voyager.appscode.com/v1beta1/ | 
*Kubernetes::VoyagerAppscodeComV1beta1Api* | [**list_certificate_for_all_namespaces**](docs/VoyagerAppscodeComV1beta1Api.md#list_certificate_for_all_namespaces) | **GET** /apis/voyager.appscode.com/v1beta1/certificates | 
*Kubernetes::VoyagerAppscodeComV1beta1Api* | [**list_ingress_for_all_namespaces**](docs/VoyagerAppscodeComV1beta1Api.md#list_ingress_for_all_namespaces) | **GET** /apis/voyager.appscode.com/v1beta1/ingresses | 
*Kubernetes::VoyagerAppscodeComV1beta1Api* | [**list_namespaced_certificate**](docs/VoyagerAppscodeComV1beta1Api.md#list_namespaced_certificate) | **GET** /apis/voyager.appscode.com/v1beta1/namespaces/{namespace}/certificates | 
*Kubernetes::VoyagerAppscodeComV1beta1Api* | [**list_namespaced_ingress**](docs/VoyagerAppscodeComV1beta1Api.md#list_namespaced_ingress) | **GET** /apis/voyager.appscode.com/v1beta1/namespaces/{namespace}/ingresses | 
*Kubernetes::VoyagerAppscodeComV1beta1Api* | [**patch_namespaced_certificate**](docs/VoyagerAppscodeComV1beta1Api.md#patch_namespaced_certificate) | **PATCH** /apis/voyager.appscode.com/v1beta1/namespaces/{namespace}/certificates/{name} | 
*Kubernetes::VoyagerAppscodeComV1beta1Api* | [**patch_namespaced_ingress**](docs/VoyagerAppscodeComV1beta1Api.md#patch_namespaced_ingress) | **PATCH** /apis/voyager.appscode.com/v1beta1/namespaces/{namespace}/ingresses/{name} | 
*Kubernetes::VoyagerAppscodeComV1beta1Api* | [**read_namespaced_certificate**](docs/VoyagerAppscodeComV1beta1Api.md#read_namespaced_certificate) | **GET** /apis/voyager.appscode.com/v1beta1/namespaces/{namespace}/certificates/{name} | 
*Kubernetes::VoyagerAppscodeComV1beta1Api* | [**read_namespaced_ingress**](docs/VoyagerAppscodeComV1beta1Api.md#read_namespaced_ingress) | **GET** /apis/voyager.appscode.com/v1beta1/namespaces/{namespace}/ingresses/{name} | 
*Kubernetes::VoyagerAppscodeComV1beta1Api* | [**replace_namespaced_certificate**](docs/VoyagerAppscodeComV1beta1Api.md#replace_namespaced_certificate) | **PUT** /apis/voyager.appscode.com/v1beta1/namespaces/{namespace}/certificates/{name} | 
*Kubernetes::VoyagerAppscodeComV1beta1Api* | [**replace_namespaced_ingress**](docs/VoyagerAppscodeComV1beta1Api.md#replace_namespaced_ingress) | **PUT** /apis/voyager.appscode.com/v1beta1/namespaces/{namespace}/ingresses/{name} | 


## Documentation for Models

 - [Kubernetes::V1beta1ACMECertificateDetails](docs/V1beta1ACMECertificateDetails.md)
 - [Kubernetes::V1beta1AuthOption](docs/V1beta1AuthOption.md)
 - [Kubernetes::V1beta1BasicAuth](docs/V1beta1BasicAuth.md)
 - [Kubernetes::V1beta1Certificate](docs/V1beta1Certificate.md)
 - [Kubernetes::V1beta1CertificateCondition](docs/V1beta1CertificateCondition.md)
 - [Kubernetes::V1beta1CertificateDetails](docs/V1beta1CertificateDetails.md)
 - [Kubernetes::V1beta1CertificateList](docs/V1beta1CertificateList.md)
 - [Kubernetes::V1beta1CertificateSpec](docs/V1beta1CertificateSpec.md)
 - [Kubernetes::V1beta1CertificateStatus](docs/V1beta1CertificateStatus.md)
 - [Kubernetes::V1beta1CertificateStorage](docs/V1beta1CertificateStorage.md)
 - [Kubernetes::V1beta1ChallengeProvider](docs/V1beta1ChallengeProvider.md)
 - [Kubernetes::V1beta1DNSChallengeProvider](docs/V1beta1DNSChallengeProvider.md)
 - [Kubernetes::V1beta1FrontendRule](docs/V1beta1FrontendRule.md)
 - [Kubernetes::V1beta1HTTPChallengeProvider](docs/V1beta1HTTPChallengeProvider.md)
 - [Kubernetes::V1beta1HTTPIngressBackend](docs/V1beta1HTTPIngressBackend.md)
 - [Kubernetes::V1beta1HTTPIngressPath](docs/V1beta1HTTPIngressPath.md)
 - [Kubernetes::V1beta1HTTPIngressRuleValue](docs/V1beta1HTTPIngressRuleValue.md)
 - [Kubernetes::V1beta1Ingress](docs/V1beta1Ingress.md)
 - [Kubernetes::V1beta1IngressBackend](docs/V1beta1IngressBackend.md)
 - [Kubernetes::V1beta1IngressList](docs/V1beta1IngressList.md)
 - [Kubernetes::V1beta1IngressRule](docs/V1beta1IngressRule.md)
 - [Kubernetes::V1beta1IngressSpec](docs/V1beta1IngressSpec.md)
 - [Kubernetes::V1beta1IngressStatus](docs/V1beta1IngressStatus.md)
 - [Kubernetes::V1beta1IngressTLS](docs/V1beta1IngressTLS.md)
 - [Kubernetes::V1beta1LocalTypedReference](docs/V1beta1LocalTypedReference.md)
 - [Kubernetes::V1beta1TCPIngressRuleValue](docs/V1beta1TCPIngressRuleValue.md)
 - [Kubernetes::V1beta1TLSAuth](docs/V1beta1TLSAuth.md)
 - [Kubernetes::V1beta1VaultStore](docs/V1beta1VaultStore.md)


## Documentation for Authorization

 All endpoints do not require authorization.

