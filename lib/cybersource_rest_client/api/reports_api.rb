=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class ReportsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Create Adhoc Report
    # Create one time report
    # @param request_body Report subscription request payload
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_report(request_body, opts = {})
      data, _status_code, _headers = create_report_with_http_info(request_body, opts)
      return data, _status_code, _headers
    end

    # Create Adhoc Report
    # Create one time report
    # @param request_body Report subscription request payload
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_report_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.create_report ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling ReportsApi.create_report"
      end
      # resource path
      local_var_path = 'reporting/v3/reports'

      # query parameters
      query_params = {}
      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request_body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#create_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Report based on reportId
    # ReportId is mandatory input
    # @param report_id Valid Report Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Cybersource Organization Id
    # @return [InlineResponse2008]
    def get_report_by_report_id(report_id, opts = {})
      data, _status_code, _headers = get_report_by_report_id_with_http_info(report_id, opts)
      return data, _status_code, _headers
    end

    # Get Report based on reportId
    # ReportId is mandatory input
    # @param report_id Valid Report Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Cybersource Organization Id
    # @return [Array<(InlineResponse2008, Fixnum, Hash)>] InlineResponse2008 data, response status code and response headers
    def get_report_by_report_id_with_http_info(report_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.get_report_by_report_id ...'
      end
      # verify the required parameter 'report_id' is set
      if @api_client.config.client_side_validation && report_id.nil?
        fail ArgumentError, "Missing the required parameter 'report_id' when calling ReportsApi.get_report_by_report_id"
      end
      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length > 32
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportsApi.get_report_by_report_id, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportsApi.get_report_by_report_id, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'] !~ Regexp.new(/[a-zA-Z0-9-_]+/)
        fail ArgumentError, "invalid value for 'opts[:\"organization_id\"]' when calling ReportsApi.get_report_by_report_id, must conform to the pattern /[a-zA-Z0-9-_]+/."
      end

      # resource path
      local_var_path = 'reporting/v3/reports/{reportId}'.sub('{' + 'reportId' + '}', report_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'organizationId'] = opts[:'organization_id'] if !opts[:'organization_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2008')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#get_report_by_report_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve available reports
    # Retrieve list of available reports
    # @param start_time Valid report Start Time in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format. - https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14   **Example date format:**   - yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX 
    # @param end_time Valid report End Time in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format. - https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14   **Example date format:**   - yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX 
    # @param time_query_type Specify time you woud like to search
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Cybersource Organization Id
    # @option opts [String] :report_mime_type Valid Report Format
    # @option opts [String] :report_frequency Valid Report Frequency
    # @option opts [String] :report_name Valid Report Name
    # @option opts [Integer] :report_definition_id Valid Report Definition Id
    # @option opts [String] :report_status Valid Report Status
    # @return [InlineResponse2007]
    def search_reports(start_time, end_time, time_query_type, opts = {})
      data, _status_code, _headers = search_reports_with_http_info(start_time, end_time, time_query_type, opts)
      return data, _status_code, _headers
    end

    # Retrieve available reports
    # Retrieve list of available reports
    # @param start_time Valid report Start Time in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format. - https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14   **Example date format:**   - yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX 
    # @param end_time Valid report End Time in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format. - https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14   **Example date format:**   - yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX 
    # @param time_query_type Specify time you woud like to search
    # @param [Hash] opts the optional parameters
    # @option opts [String] :organization_id Valid Cybersource Organization Id
    # @option opts [String] :report_mime_type Valid Report Format
    # @option opts [String] :report_frequency Valid Report Frequency
    # @option opts [String] :report_name Valid Report Name
    # @option opts [Integer] :report_definition_id Valid Report Definition Id
    # @option opts [String] :report_status Valid Report Status
    # @return [Array<(InlineResponse2007, Fixnum, Hash)>] InlineResponse2007 data, response status code and response headers
    def search_reports_with_http_info(start_time, end_time, time_query_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportsApi.search_reports ...'
      end
      # verify the required parameter 'start_time' is set
      if @api_client.config.client_side_validation && start_time.nil?
        fail ArgumentError, "Missing the required parameter 'start_time' when calling ReportsApi.search_reports"
      end
      # verify the required parameter 'end_time' is set
      if @api_client.config.client_side_validation && end_time.nil?
        fail ArgumentError, "Missing the required parameter 'end_time' when calling ReportsApi.search_reports"
      end
      # verify the required parameter 'time_query_type' is set
      if @api_client.config.client_side_validation && time_query_type.nil?
        fail ArgumentError, "Missing the required parameter 'time_query_type' when calling ReportsApi.search_reports"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['reportTimeFrame', 'executedTime'].include?(time_query_type)
        fail ArgumentError, "invalid value for 'time_query_type', must be one of reportTimeFrame, executedTime"
      end
      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length > 32
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportsApi.search_reports, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"organization_id"]" when calling ReportsApi.search_reports, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'organization_id'].nil? && opts[:'organization_id'] !~ Regexp.new(/[a-zA-Z0-9-_]+/)
        fail ArgumentError, "invalid value for 'opts[:\"organization_id\"]' when calling ReportsApi.search_reports, must conform to the pattern /[a-zA-Z0-9-_]+/."
      end

      if @api_client.config.client_side_validation && opts[:'report_mime_type'] && !['application/xml', 'text/csv'].include?(opts[:'report_mime_type'])
        fail ArgumentError, 'invalid value for "report_mime_type", must be one of application/xml, text/csv'
      end
      if @api_client.config.client_side_validation && opts[:'report_frequency'] && !['DAILY', 'WEEKLY', 'MONTHLY', 'ADHOC'].include?(opts[:'report_frequency'])
        fail ArgumentError, 'invalid value for "report_frequency", must be one of DAILY, WEEKLY, MONTHLY, ADHOC'
      end
      if @api_client.config.client_side_validation && opts[:'report_status'] && !['COMPLETED', 'PENDING', 'QUEUED', 'RUNNING', 'ERROR', 'NO_DATA'].include?(opts[:'report_status'])
        fail ArgumentError, 'invalid value for "report_status", must be one of COMPLETED, PENDING, QUEUED, RUNNING, ERROR, NO_DATA'
      end
      # resource path
      local_var_path = 'reporting/v3/reports'

      # query parameters
      query_params = {}
      query_params[:'startTime'] = start_time
      query_params[:'endTime'] = end_time
      query_params[:'timeQueryType'] = time_query_type
      query_params[:'organizationId'] = opts[:'organization_id'] if !opts[:'organization_id'].nil?
      query_params[:'reportMimeType'] = opts[:'report_mime_type'] if !opts[:'report_mime_type'].nil?
      query_params[:'reportFrequency'] = opts[:'report_frequency'] if !opts[:'report_frequency'].nil?
      query_params[:'reportName'] = opts[:'report_name'] if !opts[:'report_name'].nil?
      query_params[:'reportDefinitionId'] = opts[:'report_definition_id'] if !opts[:'report_definition_id'].nil?
      query_params[:'reportStatus'] = opts[:'report_status'] if !opts[:'report_status'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2007')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportsApi#search_reports\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
