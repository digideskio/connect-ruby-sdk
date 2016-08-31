=begin
#Square Connect API

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'date'

module SquareConnect
  # Represents a form of tender used to pay in a transaction.
  class Tender
    # The tender's unique ID.
    attr_accessor :id

    # The ID of the tender's associated location.
    attr_accessor :location_id

    # The ID of the tender's associated transaction.
    attr_accessor :transaction_id

    # The time when the tender was created, in RFC 3339 format.
    attr_accessor :created_at

    # An optional note associated with the tender at the time of payment.
    attr_accessor :note

    # The amount of the tender.
    attr_accessor :amount_money

    # The amount of any Square processing fees applied to the tender.
    attr_accessor :processing_fee_money

    # If the tender represents a customer's card on file, this is the ID of the associated customer.
    attr_accessor :customer_id

    # The type of tender.
    attr_accessor :type

    # The details of the card tender. This value is present only if the value of `type` is `CARD`.
    attr_accessor :card_details

    # The details of the cash tender. This value is present only if the value of `type` is `CASH`.
    attr_accessor :cash_details

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'location_id' => :'location_id',
        :'transaction_id' => :'transaction_id',
        :'created_at' => :'created_at',
        :'note' => :'note',
        :'amount_money' => :'amount_money',
        :'processing_fee_money' => :'processing_fee_money',
        :'customer_id' => :'customer_id',
        :'type' => :'type',
        :'card_details' => :'card_details',
        :'cash_details' => :'cash_details'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'location_id' => :'String',
        :'transaction_id' => :'String',
        :'created_at' => :'String',
        :'note' => :'String',
        :'amount_money' => :'Money',
        :'processing_fee_money' => :'Money',
        :'customer_id' => :'String',
        :'type' => :'String',
        :'card_details' => :'TenderCardDetails',
        :'cash_details' => :'TenderCashDetails'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'location_id')
        self.location_id = attributes[:'location_id']
      end

      if attributes.has_key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'note')
        self.note = attributes[:'note']
      end

      if attributes.has_key?(:'amount_money')
        self.amount_money = attributes[:'amount_money']
      end

      if attributes.has_key?(:'processing_fee_money')
        self.processing_fee_money = attributes[:'processing_fee_money']
      end

      if attributes.has_key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'card_details')
        self.card_details = attributes[:'card_details']
      end

      if attributes.has_key?(:'cash_details')
        self.cash_details = attributes[:'cash_details']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["OTHER", "CARD", "CASH", "THIRD_PARTY_CARD", "SQUARE_GIFT_CARD", "NO_SALE"])
      return false unless type_validator.valid?(@type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["OTHER", "CARD", "CASH", "THIRD_PARTY_CARD", "SQUARE_GIFT_CARD", "NO_SALE"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          location_id == o.location_id &&
          transaction_id == o.transaction_id &&
          created_at == o.created_at &&
          note == o.note &&
          amount_money == o.amount_money &&
          processing_fee_money == o.processing_fee_money &&
          customer_id == o.customer_id &&
          type == o.type &&
          card_details == o.card_details &&
          cash_details == o.cash_details
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, location_id, transaction_id, created_at, note, amount_money, processing_fee_money, customer_id, type, card_details, cash_details].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        if value.to_s =~ /^(true|t|yes|y|1)$/i
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
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SquareConnect.const_get(type).new
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
        value.compact.map{ |v| _to_hash(v) }
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