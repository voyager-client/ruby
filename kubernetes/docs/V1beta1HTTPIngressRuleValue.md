# Kubernetes::V1beta1HTTPIngressRuleValue

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | The network address to listen HTTP(s) connections on. | [optional] 
**no_tls** | **BOOLEAN** | Set noTLS &#x3D; true to force plain text. Else, auto detect like present | [optional] 
**node_port** | [**IntstrIntOrString**](IntstrIntOrString.md) | Specifies the node port of the referenced service. | [optional] 
**paths** | [**Array&lt;V1beta1HTTPIngressPath&gt;**](V1beta1HTTPIngressPath.md) | A collection of paths that map requests to backends. | 
**port** | [**IntstrIntOrString**](IntstrIntOrString.md) | port to listen http(s) connections. | [optional] 


