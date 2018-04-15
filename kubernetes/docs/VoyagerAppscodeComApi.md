# Kubernetes::VoyagerAppscodeComApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_api_group**](VoyagerAppscodeComApi.md#get_api_group) | **GET** /apis/voyager.appscode.com/ | 


# **get_api_group**
> V1APIGroup get_api_group



get information of a group

### Example
```ruby
# load the gem
require 'kubernetes'

api_instance = Kubernetes::VoyagerAppscodeComApi.new

begin
  result = api_instance.get_api_group
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling VoyagerAppscodeComApi->get_api_group: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1APIGroup**](V1APIGroup.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/yaml, application/vnd.kubernetes.protobuf
 - **Accept**: application/json, application/yaml, application/vnd.kubernetes.protobuf



