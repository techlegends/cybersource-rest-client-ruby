=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  # Notification Of Change
  class InlineResponse2003NotificationOfChanges
    # Merchant Reference Number
    attr_accessor :merchant_reference_number

    # Transaction Reference Number
    attr_accessor :transaction_reference_number

    # Notification Of Change Date(ISO 8601 Extended)
    attr_accessor :time

    # Merchant Reference Number
    attr_accessor :code

    # Account Type
    attr_accessor :account_type

    # Routing Number
    attr_accessor :routing_number

    # Account Number
    attr_accessor :account_number

    # Consumer Name
    attr_accessor :consumer_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'merchant_reference_number' => :'merchantReferenceNumber',
        :'transaction_reference_number' => :'transactionReferenceNumber',
        :'time' => :'time',
        :'code' => :'code',
        :'account_type' => :'accountType',
        :'routing_number' => :'routingNumber',
        :'account_number' => :'accountNumber',
        :'consumer_name' => :'consumerName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'merchant_reference_number' => :'String',
        :'transaction_reference_number' => :'String',
        :'time' => :'DateTime',
        :'code' => :'String',
        :'account_type' => :'String',
        :'routing_number' => :'String',
        :'account_number' => :'String',
        :'consumer_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'merchantReferenceNumber')
        self.merchant_reference_number = attributes[:'merchantReferenceNumber']
      end

      if attributes.has_key?(:'transactionReferenceNumber')
        self.transaction_reference_number = attributes[:'transactionReferenceNumber']
      end

      if attributes.has_key?(:'time')
        self.time = attributes[:'time']
      end

      if attributes.has_key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.has_key?(:'accountType')
        self.account_type = attributes[:'accountType']
      end

      if attributes.has_key?(:'routingNumber')
        self.routing_number = attributes[:'routingNumber']
      end

      if attributes.has_key?(:'accountNumber')
        self.account_number = attributes[:'accountNumber']
      end

      if attributes.has_key?(:'consumerName')
        self.consumer_name = attributes[:'consumerName']
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          merchant_reference_number == o.merchant_reference_number &&
          transaction_reference_number == o.transaction_reference_number &&
          time == o.time &&
          code == o.code &&
          account_type == o.account_type &&
          routing_number == o.routing_number &&
          account_number == o.account_number &&
          consumer_name == o.consumer_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [merchant_reference_number, transaction_reference_number, time, code, account_type, routing_number, account_number, consumer_name].hash
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
