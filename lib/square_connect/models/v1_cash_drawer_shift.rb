=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect

  class V1CashDrawerShift
    # The shift's unique ID.
    attr_accessor :id

    # The shift's current state.
    attr_accessor :event_type

    # The time when the shift began, in ISO 8601 format.
    attr_accessor :opened_at

    # The time when the shift ended, in ISO 8601 format.
    attr_accessor :ended_at

    # The time when the shift was closed, in ISO 8601 format.
    attr_accessor :closed_at

    # The IDs of all employees that were logged into Square Register at some point during the cash drawer shift.
    attr_accessor :employee_ids

    # The ID of the employee that started the cash drawer shift.
    attr_accessor :opening_employee_id

    # The ID of the employee that ended the cash drawer shift.
    attr_accessor :ending_employee_id

    # The ID of the employee that closed the cash drawer shift by auditing the cash drawer's contents.
    attr_accessor :closing_employee_id

    # The time when the timecard was created, in ISO 8601 format.
    attr_accessor :description

    # The amount of money in the cash drawer at the start of the shift.
    attr_accessor :starting_cash_money

    # The amount of money added to the cash drawer from cash payments.
    attr_accessor :cash_payment_money

    # The amount of money removed from the cash drawer from cash refunds. This value is always negative or zero.
    attr_accessor :cash_refunds_money

    # The amount of money added to the cash drawer for reasons other than cash payments.
    attr_accessor :cash_paid_in_money

    # The amount of money removed from the cash drawer for reasons other than cash refunds.
    attr_accessor :cash_paid_out_money

    # The amount of money that should be in the cash drawer at the end of the shift, based on the shift's other money amounts.
    attr_accessor :expected_cash_money

    # The amount of money found in the cash drawer at the end of the shift by an auditing employee.
    attr_accessor :closed_cash_money

    # The device running Square Register that was connected to the cash drawer.
    attr_accessor :device

    # All of the events (payments, refunds, and so on) that involved the cash drawer during the shift.
    attr_accessor :events

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
        :'event_type' => :'event_type',
        :'opened_at' => :'opened_at',
        :'ended_at' => :'ended_at',
        :'closed_at' => :'closed_at',
        :'employee_ids' => :'employee_ids',
        :'opening_employee_id' => :'opening_employee_id',
        :'ending_employee_id' => :'ending_employee_id',
        :'closing_employee_id' => :'closing_employee_id',
        :'description' => :'description',
        :'starting_cash_money' => :'starting_cash_money',
        :'cash_payment_money' => :'cash_payment_money',
        :'cash_refunds_money' => :'cash_refunds_money',
        :'cash_paid_in_money' => :'cash_paid_in_money',
        :'cash_paid_out_money' => :'cash_paid_out_money',
        :'expected_cash_money' => :'expected_cash_money',
        :'closed_cash_money' => :'closed_cash_money',
        :'device' => :'device',
        :'events' => :'events'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'event_type' => :'String',
        :'opened_at' => :'String',
        :'ended_at' => :'BOOLEAN',
        :'closed_at' => :'String',
        :'employee_ids' => :'Array<String>',
        :'opening_employee_id' => :'String',
        :'ending_employee_id' => :'String',
        :'closing_employee_id' => :'String',
        :'description' => :'String',
        :'starting_cash_money' => :'V1Money',
        :'cash_payment_money' => :'V1Money',
        :'cash_refunds_money' => :'V1Money',
        :'cash_paid_in_money' => :'V1Money',
        :'cash_paid_out_money' => :'V1Money',
        :'expected_cash_money' => :'V1Money',
        :'closed_cash_money' => :'V1Money',
        :'device' => :'Device',
        :'events' => :'Array<V1CashDrawerEvent>'
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

      if attributes.has_key?(:'event_type')
        self.event_type = attributes[:'event_type']
      end

      if attributes.has_key?(:'opened_at')
        self.opened_at = attributes[:'opened_at']
      end

      if attributes.has_key?(:'ended_at')
        self.ended_at = attributes[:'ended_at']
      end

      if attributes.has_key?(:'closed_at')
        self.closed_at = attributes[:'closed_at']
      end

      if attributes.has_key?(:'employee_ids')
        if (value = attributes[:'employee_ids']).is_a?(Array)
          self.employee_ids = value
        end
      end

      if attributes.has_key?(:'opening_employee_id')
        self.opening_employee_id = attributes[:'opening_employee_id']
      end

      if attributes.has_key?(:'ending_employee_id')
        self.ending_employee_id = attributes[:'ending_employee_id']
      end

      if attributes.has_key?(:'closing_employee_id')
        self.closing_employee_id = attributes[:'closing_employee_id']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'starting_cash_money')
        self.starting_cash_money = attributes[:'starting_cash_money']
      end

      if attributes.has_key?(:'cash_payment_money')
        self.cash_payment_money = attributes[:'cash_payment_money']
      end

      if attributes.has_key?(:'cash_refunds_money')
        self.cash_refunds_money = attributes[:'cash_refunds_money']
      end

      if attributes.has_key?(:'cash_paid_in_money')
        self.cash_paid_in_money = attributes[:'cash_paid_in_money']
      end

      if attributes.has_key?(:'cash_paid_out_money')
        self.cash_paid_out_money = attributes[:'cash_paid_out_money']
      end

      if attributes.has_key?(:'expected_cash_money')
        self.expected_cash_money = attributes[:'expected_cash_money']
      end

      if attributes.has_key?(:'closed_cash_money')
        self.closed_cash_money = attributes[:'closed_cash_money']
      end

      if attributes.has_key?(:'device')
        self.device = attributes[:'device']
      end

      if attributes.has_key?(:'events')
        if (value = attributes[:'events']).is_a?(Array)
          self.events = value
        end
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
      event_type_validator = EnumAttributeValidator.new('String', ["OPEN", "ENDED", "CLOSED"])
      return false unless event_type_validator.valid?(@event_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] event_type Object to be assigned
    def event_type=(event_type)
      validator = EnumAttributeValidator.new('String', ["OPEN", "ENDED", "CLOSED"])
      unless validator.valid?(event_type)
        fail ArgumentError, "invalid value for 'event_type', must be one of #{validator.allowable_values}."
      end
      @event_type = event_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          event_type == o.event_type &&
          opened_at == o.opened_at &&
          ended_at == o.ended_at &&
          closed_at == o.closed_at &&
          employee_ids == o.employee_ids &&
          opening_employee_id == o.opening_employee_id &&
          ending_employee_id == o.ending_employee_id &&
          closing_employee_id == o.closing_employee_id &&
          description == o.description &&
          starting_cash_money == o.starting_cash_money &&
          cash_payment_money == o.cash_payment_money &&
          cash_refunds_money == o.cash_refunds_money &&
          cash_paid_in_money == o.cash_paid_in_money &&
          cash_paid_out_money == o.cash_paid_out_money &&
          expected_cash_money == o.expected_cash_money &&
          closed_cash_money == o.closed_cash_money &&
          device == o.device &&
          events == o.events
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, event_type, opened_at, ended_at, closed_at, employee_ids, opening_employee_id, ending_employee_id, closing_employee_id, description, starting_cash_money, cash_payment_money, cash_refunds_money, cash_paid_in_money, cash_paid_out_money, expected_cash_money, closed_cash_money, device, events].hash
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
