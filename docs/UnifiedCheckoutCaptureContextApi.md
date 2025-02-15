# CyberSource::UnifiedCheckoutCaptureContextApi

All URIs are relative to *https://apitest.cybersource.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_unified_checkout_capture_context**](UnifiedCheckoutCaptureContextApi.md#generate_unified_checkout_capture_context) | **POST** /up/v1/capture-contexts | Generate Unified Checkout Capture Context


# **generate_unified_checkout_capture_context**
> generate_unified_checkout_capture_context(generate_unified_checkout_capture_context_request)

Generate Unified Checkout Capture Context

Generate a one-time use capture context used for the invocation of Unified Checkout. The Request wil contain all of the paramiters for how Unified Chkcout will operate within a client webpage. The resulting payload will be a JWT signed object that can be used to initate Unified Checkout within a merchnat web page

### Example
```ruby
# load the gem
require 'cybersource_rest_client'

api_instance = CyberSource::UnifiedCheckoutCaptureContextApi.new

generate_unified_checkout_capture_context_request = CyberSource::GenerateUnifiedCheckoutCaptureContextRequest.new # GenerateUnifiedCheckoutCaptureContextRequest | 


begin
  #Generate Unified Checkout Capture Context
  api_instance.generate_unified_checkout_capture_context(generate_unified_checkout_capture_context_request)
rescue CyberSource::ApiError => e
  puts "Exception when calling UnifiedCheckoutCaptureContextApi->generate_unified_checkout_capture_context: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_unified_checkout_capture_context_request** | [**GenerateUnifiedCheckoutCaptureContextRequest**](GenerateUnifiedCheckoutCaptureContextRequest.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=utf-8
 - **Accept**: application/jwt



