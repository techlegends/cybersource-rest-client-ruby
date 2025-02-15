=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class CaptureApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Capture a Payment
    # Include the payment ID in the POST request to capture the payment amount.
    # @param capture_payment_request 
    # @param id The payment ID returned from a previous payment request. This ID links the capture to the payment. 
    # @param [Hash] opts the optional parameters
    # @return [PtsV2PaymentsCapturesPost201Response]
    def capture_payment(capture_payment_request, id, opts = {})
      data, status_code, headers = capture_payment_with_http_info(capture_payment_request, id, opts)
      return data, status_code, headers
    end

    # Capture a Payment
    # Include the payment ID in the POST request to capture the payment amount.
    # @param capture_payment_request 
    # @param id The payment ID returned from a previous payment request. This ID links the capture to the payment. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PtsV2PaymentsCapturesPost201Response, Fixnum, Hash)>] PtsV2PaymentsCapturesPost201Response data, response status code and response headers
    def capture_payment_with_http_info(capture_payment_request, id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: CaptureApi.capture_payment ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'capture_payment_request' is set
      if @api_client.config.client_side_validation && capture_payment_request.nil?
        fail ArgumentError, "Missing the required parameter 'capture_payment_request' when calling CaptureApi.capture_payment"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CaptureApi.capture_payment"
      end
      # resource path
      local_var_path = 'pts/v2/payments/{id}/captures'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(capture_payment_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PtsV2PaymentsCapturesPost201Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: CaptureApi#capture_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
