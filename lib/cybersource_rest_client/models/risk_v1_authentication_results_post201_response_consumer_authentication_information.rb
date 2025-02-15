=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class RiskV1AuthenticationResultsPost201ResponseConsumerAuthenticationInformation
    # Identifies the UI Type the ACS will use to complete the challenge. **NOTE**: Only available for App transactions using the Cardinal Mobile SDK. 
    attr_accessor :acs_rendering_type

    # Unique transaction identifier assigned by the ACS to identify a single transaction. 
    attr_accessor :acs_transaction_id

    # Raw authentication data that comes from the cardissuing bank. Primary authentication field that indicates if authentication was successful and if liability shift occurred. You should examine first the result of this field. This field contains one of these values: - `-1`: Invalid PARes. - `0`: Successful validation. - `1`: Cardholder is not participating, but the attempt to authenticate was recorded. - `6`: Issuer unable to perform authentication. - `9`: Cardholder did not complete authentication. 
    attr_accessor :authentication_result

    # Message that explains the authenticationResult reply field. 
    attr_accessor :authentication_status_msg

    # Payer authentication transaction identifier is used to link the check enrollment and validate authentication messages. For Rupay, this field should be passed as request only for Resend OTP use case. 
    attr_accessor :authentication_transaction_id

    # Payer authentication transaction identifier passed to link the validation and authorization calls. 
    attr_accessor :authentication_transaction_context_id

    # Web based token used to authenticate consumer with Rupay authentication provider. 
    attr_accessor :transaction_token

    # The Base64 encoded JSON Payload of CB specific Authorization Values returned in the challenge Flow 
    attr_accessor :authorization_payload

    # Unique identifier generated by the card-issuing bank for Visa, American Express, JCB, Diners Club, and Discover transactions after the customer is authenticated. The value is in base64. When you request the card authorization service, CyberSource automatically converts the value, not the field name, to the format required by your payment processor. 
    attr_accessor :cavv

    # Field that is returned only when the CAVV is generated, which occurs when paresStatus contains the values Y (successful authentication) or A (attempted authentication). If you use the ATOS processor, send the value of this field in the `cavv_algorithm` request field of the authorization service. This field contains one of these values: - `2`: Visa, American Express, JCB, Diners Club, and Discover - `3`: Mastercard 
    attr_accessor :cavv_algorithm

    # The directory server error code indicating a problem with this transaction. Note - Max Length of this field is typically 3 characters. 
    attr_accessor :directory_server_error_code

    # Directory server text and additional detail about the error for this transaction. 
    attr_accessor :directory_server_error_description

    # Indicator used to differentiate Internet transactions from other types. The authentication failed if this field is not returned. For Visa, if your payment processor is Streamline, Barclays, AIBMS, or FDC Germany, you receive the value vbv_failure instead of internet when eci is 07. The value of this field is passed automatically to the authorization service if you request the services together. This field contains one of these values: - `aesk`: American Express SafeKey authentication verified successfully. - `aesk_attempted`: Card not enrolled in American Express SafeKey, but the attempt to authenticate was recorded. - `dipb`: Discover ProtectBuy authentication verified successfully. - `dipb_attempted`: Card not enrolled in Discover ProtectBuy, but the attempt to authenticate was recorded. - `internet`: Authentication was not verified successfully. - `js`: J/Secure authentication verified successfully. - `js_attempted`: Card not enrolled in J/Secure, but the attempt to authenticate was recorded. - `moto`: Mail or telephone order. - `pb_attempted`: Card not enrolled in Diners Club ProtectBuy, but the attempt to authenticate was recorded. - `recurring`: Recurring transaction. - `spa`: Mastercard Identity Check authentication verified successfully. - `spa_failure`: Mastercard Identity Check failed authentication. - `vbv`: Visa Secure authentication verified successfully. - `vbv_attempted`: Card not enrolled in Visa Secure, but the attempt to authenticate was recorded. - `vbv_failure`: Visa Secure authentication unavailable. 
    attr_accessor :indicator

    # Indicates the number of authentication cycles attempted by the cardholder and is tracked by the Issuing Banks ACS.Example: if customer gets the challenge window and enter in their one time password and hit submit then that interaction counter should just be 1. When customer gets the challenge window and the bank asks if they want to have the one time password  sent to their phone or their email and they have to choose before going to the next screen to enter in their one time password then this interaction count would be 2. One for the selection of how they want the one time password delivered and another with them actually entering in the one time password and hitting the submit button. 
    attr_accessor :interaction_counter

    # Note This field applies only to non-U.S-issued cards.  For enroll, Numeric electronic commerce indicator (ECI) returned only for Visa, American Express, JCB, Diners Club, and Discover transactions when the card is not enrolled. For more information, see \"Interpreting the Reply,\" page 22.  If you are not using the CyberSource payment services, you must send this value to your payment processor in the subsequent request for card authorization. This field contains one of these values: - `06`: The card can be enrolled. Liability shift. - `07`: The card cannot be enrolled. No liability shift.  For validate, Numeric electronic commerce indicator (ECI) returned only for Visa, American Express, JCB, Diners Club, and Discover transactions. The field is absent when authentication fails. You must send this value to your payment processor in the subsequent request for card authorization. This field contains one of these values: - `05`: Successful authentication - `06`: Authentication attempted - `07`: Failed authentication (No response from the merchant because of a problem.) 
    attr_accessor :eci

    # ECI value that can be returned for Visa, Mastercard, American Express, JCB, Diners Club, and Discover. The field is absent when authentication fails. If your payment processor is Streamline, you must pass the value of this field instead of the value of `eci` or `ucafCollectionIndicator`.  This field can contain one of these values: - `01`: Authentication attempted (Mastercard) - `02`: Successful authentication (Mastercard) - `05`: Successful authentication (Visa, American Express, JCB, Diners Club, and Discover) - `06`: Authentication attempted (Visa, American Express, JCB, Diners Club, and Discover) 
    attr_accessor :eci_raw

    # Raw result of the authentication check. If you are configured for Asia, Middle East, and Africa Gateway Processing, you need to send the value of this field in your authorization request. This field can contain one of these values: - `A`: Proof of authentication attempt was generated. - `N`: Customer failed or canceled authentication. Transaction denied. - `U`: Authentication not completed regardless of the reason. - `Y`: Customer was successfully authenticated. 
    attr_accessor :pares_status

    # SDK unique transaction identifier that is generated on each new transaction. 
    attr_accessor :sdk_transaction_id

    # This field contains the 3D Secure version that was used to process the transaction. For example, 1.0.2 or 2.0.0. 
    attr_accessor :specification_version

    # Unique transaction identifier assigned by the 3DS Server to identify a single transaction. 
    attr_accessor :three_ds_server_transaction_id

    # AAV is a unique identifier generated by the card-issuing bank for Mastercard Identity Check transactions after the customer is authenticated. The value is in base64. Include the data in the card authorization request. 
    attr_accessor :ucaf_authentication_data

    # For enroll, Returned only for Mastercard transactions. Indicates that authentication is not required because the customer is not enrolled. Add the value of this field to the authorization field ucaf_collection_indicator. This field can contain these values: 0, 1.  For validate, Numeric electronic commerce indicator (ECI) returned only for Mastercard Identity Check transactions. The field is absent when authentication fails. You must send this value to your payment processor in the request for card authorization. This field contain one of these values: - `0`: Authentication data not collected, and customer authentication was not completed. - `1`: Authentication data not collected because customer authentication was not completed. - `2`: Authentication data collected because customer completed authentication. 
    attr_accessor :ucaf_collection_indicator

    # Enables the communication of trusted beneficiary/whitelist status between the ACS, the DS and the 3DS Requestor.  Possible Values:  Y - 3DS Requestor is whitelisted by cardholder  N - 3DS Requestor is not whitelisted by cardholder 
    attr_accessor :white_list_status

    # This data element will be populated by the system setting Whitelist Status. Possible Values: 01 - 3DS/ Server/ 02 – DS/03 - ACS 
    attr_accessor :white_list_status_source

    # Transaction identifier generated by CyberSource for successful enrollment or validation checks. Use this value, which is in base64, to match an outgoing PAReq with an incoming PARes. CyberSource forwards the XID with the card authorization service to these payment processors in these cases: - Barclays - Streamline (when the **ecommerceIndicator**`=spa`) 
    attr_accessor :xid

    # The Directory Server Transaction ID is generated by the Mastercard Directory Server during the authentication transaction and passed back to the merchant with the authentication results. For Cybersource Through Visanet Gateway: The value for this field corresponds to the following data in the TC 33 capture file3: Record: CP01 TCR7, Position: 114-149, Field: MC AVV Verification—Directory Server Transaction ID 
    attr_accessor :directory_server_transaction_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'acs_rendering_type' => :'acsRenderingType',
        :'acs_transaction_id' => :'acsTransactionId',
        :'authentication_result' => :'authenticationResult',
        :'authentication_status_msg' => :'authenticationStatusMsg',
        :'authentication_transaction_id' => :'authenticationTransactionId',
        :'authentication_transaction_context_id' => :'authenticationTransactionContextId',
        :'transaction_token' => :'transactionToken',
        :'authorization_payload' => :'authorizationPayload',
        :'cavv' => :'cavv',
        :'cavv_algorithm' => :'cavvAlgorithm',
        :'directory_server_error_code' => :'directoryServerErrorCode',
        :'directory_server_error_description' => :'directoryServerErrorDescription',
        :'indicator' => :'indicator',
        :'interaction_counter' => :'interactionCounter',
        :'eci' => :'eci',
        :'eci_raw' => :'eciRaw',
        :'pares_status' => :'paresStatus',
        :'sdk_transaction_id' => :'sdkTransactionId',
        :'specification_version' => :'specificationVersion',
        :'three_ds_server_transaction_id' => :'threeDSServerTransactionId',
        :'ucaf_authentication_data' => :'ucafAuthenticationData',
        :'ucaf_collection_indicator' => :'ucafCollectionIndicator',
        :'white_list_status' => :'whiteListStatus',
        :'white_list_status_source' => :'whiteListStatusSource',
        :'xid' => :'xid',
        :'directory_server_transaction_id' => :'directoryServerTransactionId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'acs_rendering_type' => :'String',
        :'acs_transaction_id' => :'String',
        :'authentication_result' => :'String',
        :'authentication_status_msg' => :'String',
        :'authentication_transaction_id' => :'String',
        :'authentication_transaction_context_id' => :'String',
        :'transaction_token' => :'String',
        :'authorization_payload' => :'String',
        :'cavv' => :'String',
        :'cavv_algorithm' => :'String',
        :'directory_server_error_code' => :'String',
        :'directory_server_error_description' => :'String',
        :'indicator' => :'String',
        :'interaction_counter' => :'String',
        :'eci' => :'String',
        :'eci_raw' => :'String',
        :'pares_status' => :'String',
        :'sdk_transaction_id' => :'String',
        :'specification_version' => :'String',
        :'three_ds_server_transaction_id' => :'String',
        :'ucaf_authentication_data' => :'String',
        :'ucaf_collection_indicator' => :'String',
        :'white_list_status' => :'String',
        :'white_list_status_source' => :'String',
        :'xid' => :'String',
        :'directory_server_transaction_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'acsRenderingType')
        self.acs_rendering_type = attributes[:'acsRenderingType']
      end

      if attributes.has_key?(:'acsTransactionId')
        self.acs_transaction_id = attributes[:'acsTransactionId']
      end

      if attributes.has_key?(:'authenticationResult')
        self.authentication_result = attributes[:'authenticationResult']
      end

      if attributes.has_key?(:'authenticationStatusMsg')
        self.authentication_status_msg = attributes[:'authenticationStatusMsg']
      end

      if attributes.has_key?(:'authenticationTransactionId')
        self.authentication_transaction_id = attributes[:'authenticationTransactionId']
      end

      if attributes.has_key?(:'authenticationTransactionContextId')
        self.authentication_transaction_context_id = attributes[:'authenticationTransactionContextId']
      end

      if attributes.has_key?(:'transactionToken')
        self.transaction_token = attributes[:'transactionToken']
      end

      if attributes.has_key?(:'authorizationPayload')
        self.authorization_payload = attributes[:'authorizationPayload']
      end

      if attributes.has_key?(:'cavv')
        self.cavv = attributes[:'cavv']
      end

      if attributes.has_key?(:'cavvAlgorithm')
        self.cavv_algorithm = attributes[:'cavvAlgorithm']
      end

      if attributes.has_key?(:'directoryServerErrorCode')
        self.directory_server_error_code = attributes[:'directoryServerErrorCode']
      end

      if attributes.has_key?(:'directoryServerErrorDescription')
        self.directory_server_error_description = attributes[:'directoryServerErrorDescription']
      end

      if attributes.has_key?(:'indicator')
        self.indicator = attributes[:'indicator']
      end

      if attributes.has_key?(:'interactionCounter')
        self.interaction_counter = attributes[:'interactionCounter']
      end

      if attributes.has_key?(:'eci')
        self.eci = attributes[:'eci']
      end

      if attributes.has_key?(:'eciRaw')
        self.eci_raw = attributes[:'eciRaw']
      end

      if attributes.has_key?(:'paresStatus')
        self.pares_status = attributes[:'paresStatus']
      end

      if attributes.has_key?(:'sdkTransactionId')
        self.sdk_transaction_id = attributes[:'sdkTransactionId']
      end

      if attributes.has_key?(:'specificationVersion')
        self.specification_version = attributes[:'specificationVersion']
      end

      if attributes.has_key?(:'threeDSServerTransactionId')
        self.three_ds_server_transaction_id = attributes[:'threeDSServerTransactionId']
      end

      if attributes.has_key?(:'ucafAuthenticationData')
        self.ucaf_authentication_data = attributes[:'ucafAuthenticationData']
      end

      if attributes.has_key?(:'ucafCollectionIndicator')
        self.ucaf_collection_indicator = attributes[:'ucafCollectionIndicator']
      end

      if attributes.has_key?(:'whiteListStatus')
        self.white_list_status = attributes[:'whiteListStatus']
      end

      if attributes.has_key?(:'whiteListStatusSource')
        self.white_list_status_source = attributes[:'whiteListStatusSource']
      end

      if attributes.has_key?(:'xid')
        self.xid = attributes[:'xid']
      end

      if attributes.has_key?(:'directoryServerTransactionId')
        self.directory_server_transaction_id = attributes[:'directoryServerTransactionId']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] acs_transaction_id Value to be assigned
    def acs_transaction_id=(acs_transaction_id)
      @acs_transaction_id = acs_transaction_id
    end

    # Custom attribute writer method with validation
    # @param [Object] authentication_transaction_id Value to be assigned
    def authentication_transaction_id=(authentication_transaction_id)
      @authentication_transaction_id = authentication_transaction_id
    end

    # Custom attribute writer method with validation
    # @param [Object] authentication_transaction_context_id Value to be assigned
    def authentication_transaction_context_id=(authentication_transaction_context_id)
      @authentication_transaction_context_id = authentication_transaction_context_id
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_token Value to be assigned
    def transaction_token=(transaction_token)
      @transaction_token = transaction_token
    end

    # Custom attribute writer method with validation
    # @param [Object] cavv Value to be assigned
    def cavv=(cavv)
      @cavv = cavv
    end

    # Custom attribute writer method with validation
    # @param [Object] cavv_algorithm Value to be assigned
    def cavv_algorithm=(cavv_algorithm)
      @cavv_algorithm = cavv_algorithm
    end

    # Custom attribute writer method with validation
    # @param [Object] directory_server_error_description Value to be assigned
    def directory_server_error_description=(directory_server_error_description)
      @directory_server_error_description = directory_server_error_description
    end

    # Custom attribute writer method with validation
    # @param [Object] interaction_counter Value to be assigned
    def interaction_counter=(interaction_counter)
      @interaction_counter = interaction_counter
    end

    # Custom attribute writer method with validation
    # @param [Object] sdk_transaction_id Value to be assigned
    def sdk_transaction_id=(sdk_transaction_id)
      @sdk_transaction_id = sdk_transaction_id
    end

    # Custom attribute writer method with validation
    # @param [Object] three_ds_server_transaction_id Value to be assigned
    def three_ds_server_transaction_id=(three_ds_server_transaction_id)
      @three_ds_server_transaction_id = three_ds_server_transaction_id
    end

    # Custom attribute writer method with validation
    # @param [Object] white_list_status Value to be assigned
    def white_list_status=(white_list_status)
      @white_list_status = white_list_status
    end

    # Custom attribute writer method with validation
    # @param [Object] white_list_status_source Value to be assigned
    def white_list_status_source=(white_list_status_source)
      @white_list_status_source = white_list_status_source
    end

    # Custom attribute writer method with validation
    # @param [Object] directory_server_transaction_id Value to be assigned
    def directory_server_transaction_id=(directory_server_transaction_id)
      @directory_server_transaction_id = directory_server_transaction_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          acs_rendering_type == o.acs_rendering_type &&
          acs_transaction_id == o.acs_transaction_id &&
          authentication_result == o.authentication_result &&
          authentication_status_msg == o.authentication_status_msg &&
          authentication_transaction_id == o.authentication_transaction_id &&
          authentication_transaction_context_id == o.authentication_transaction_context_id &&
          transaction_token == o.transaction_token &&
          authorization_payload == o.authorization_payload &&
          cavv == o.cavv &&
          cavv_algorithm == o.cavv_algorithm &&
          directory_server_error_code == o.directory_server_error_code &&
          directory_server_error_description == o.directory_server_error_description &&
          indicator == o.indicator &&
          interaction_counter == o.interaction_counter &&
          eci == o.eci &&
          eci_raw == o.eci_raw &&
          pares_status == o.pares_status &&
          sdk_transaction_id == o.sdk_transaction_id &&
          specification_version == o.specification_version &&
          three_ds_server_transaction_id == o.three_ds_server_transaction_id &&
          ucaf_authentication_data == o.ucaf_authentication_data &&
          ucaf_collection_indicator == o.ucaf_collection_indicator &&
          white_list_status == o.white_list_status &&
          white_list_status_source == o.white_list_status_source &&
          xid == o.xid &&
          directory_server_transaction_id == o.directory_server_transaction_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [acs_rendering_type, acs_transaction_id, authentication_result, authentication_status_msg, authentication_transaction_id, authentication_transaction_context_id, transaction_token, authorization_payload, cavv, cavv_algorithm, directory_server_error_code, directory_server_error_description, indicator, interaction_counter, eci, eci_raw, pares_status, sdk_transaction_id, specification_version, three_ds_server_transaction_id, ucaf_authentication_data, ucaf_collection_indicator, white_list_status, white_list_status_source, xid, directory_server_transaction_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CyberSource.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
