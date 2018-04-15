# Kubernetes::ApisApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_api_versions**](ApisApi.md#get_api_versions) | **GET** /apis/ | 


# **get_api_versions**
> V1APIGroupList get_api_versions



get available API versions

### Example
```ruby
# load the gem
require 'kubernetes'

api_instance = Kubernetes::ApisApi.new

begin
  result = api_instance.get_api_versions
  p result
rescue Kubernetes::ApiError => e
  puts "Exception when calling ApisApi->get_api_versions: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1APIGroupList**](V1APIGroupList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/yaml, application/vnd.kubernetes.protobuf
 - **Accept**: application/json, application/yaml, application/vnd.kubernetes.protobuf



