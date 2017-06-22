=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # The wrapper object for object types in the Catalog data model. The type of a particular `CatalogObject` is determined by the value of `type` and only the corresponding data field may be set.  - if type = `ITEM`, only `item_data` will be populated and it will contain a valid [CatalogItem](#type-catalogitem) object. - if type = `ITEM_VARIATION`, only `item_variation_data` will be populated and it will contain a valid [CatalogItemVariation](#type-catalogitemvariation) object. - if type = `MODIFIER`, only `modifier_data` will be populated and it will contain a valid [CatalogModifier](#type-catalogmodifier) object. - if type = `MODIFIER_LIST`, only `modifier_list_data` will be populated and it will contain a valid [CatalogModifierList](#type-catalogmodifierlist) object. - if type = `CATEGORY`, only `category_data` will be populated and it will contain a valid [CatalogCategory](#type-catalogcategory) object. - if type = `DISCOUNT`, only `discount_data` will be populated and it will contain a valid [CatalogDiscount](#type-catalogdiscount) object. - if type = `TAX`, only `tax_data` will be populated and it will contain a valid [CatalogTax](#type-catalogtax) object.  For a more detailed discussion of the Catalog data model, please see the [Catalog Overview](https://docs.connect.squareup.com/articles/catalog-overview).
  class CatalogObject
    # The type of this object. Each object type has expected properties expressed in a structured format within its corresponding `*_data` field below.  See [CatalogObjectType](#type-catalogobjecttype) for all possible values.
    attr_accessor :type

    # An identifier to reference this object in the catalog. When a new CatalogObject is inserted, the client should set the id to a temporary identifier starting with a `'#'` character. Other objects being inserted or updated within the same request may use this identifier to refer to the new object.  When the server receives the new object, it will supply a unique identifier that replaces the temporary identifier for all future references.
    attr_accessor :id

    # Last modification [timestamp](#workingwithdates) in RFC 3339 format, e.g., `\"2016-08-15T23:59:33.123Z\"` would indicate the UTC time (denoted by `Z`) of August 15, 2016 at 23:59:33 and 123 milliseconds.
    attr_accessor :updated_at

    # The version of the object. When updating an object, the version supplied by the must match the version in the database, otherwise the write will be rejected as conflicting.
    attr_accessor :version

    # If `true`, the object has been deleted from the database. Must be `false` for new objects being inserted. When deleted, the `updated_at` field will equal the deletion time.
    attr_accessor :is_deleted

    # The Connect V1 IDs for this object at each [location][#type-location] where it is present, where they differ from the object's Connect V2 ID. The field will only be present for objects that have been created or modified by legacy APIs.
    attr_accessor :catalog_v1_ids

    # If `true`, this object is present at all locations (including future locations), except where specified in the `absent_at_location_ids` field. If `false`, this object is not present at any locations (including future locations), except where specified in the `present_at_location_ids` field.
    attr_accessor :present_at_all_locations

    # A list of locations where the object is present, even if `present_at_all_locations` is `false`.
    attr_accessor :present_at_location_ids

    # A list of locations where the object is not present, even if `present_at_all_locations` is `true`.
    attr_accessor :absent_at_location_ids

    # Structured data for a [CatalogItem](#type-catalogitem), set for CatalogObjects of type `ITEM`.
    attr_accessor :item_data

    # Structured data for a [CatalogCategory](#type-catalogcategory), set for CatalogObjects of type `CATEGORY`.
    attr_accessor :category_data

    # Structured data for a [CatalogItemVariation](#type-catalogitemvariation), set for CatalogObjects of type `ITEM_VARIATION`.
    attr_accessor :item_variation_data

    # Structured data for a [CatalogTax](#type-catalogtax), set for CatalogObjects of type `TAX`.
    attr_accessor :tax_data

    # Structured data for a [CatalogDiscount](#type-catalogdiscount), set for CatalogObjects of type `DISCOUNT`.
    attr_accessor :discount_data

    # Structured data for a [CatalogModifierList](#type-catalogmodifierlist), set for CatalogObjects of type `MODIFIER_LIST`.
    attr_accessor :modifier_list_data

    # Structured data for a [CatalogModifier](#type-catalogmodifier), set for CatalogObjects of type `MODIFIER`.
    attr_accessor :modifier_data

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
        :'type' => :'type',
        :'id' => :'id',
        :'updated_at' => :'updated_at',
        :'version' => :'version',
        :'is_deleted' => :'is_deleted',
        :'catalog_v1_ids' => :'catalog_v1_ids',
        :'present_at_all_locations' => :'present_at_all_locations',
        :'present_at_location_ids' => :'present_at_location_ids',
        :'absent_at_location_ids' => :'absent_at_location_ids',
        :'item_data' => :'item_data',
        :'category_data' => :'category_data',
        :'item_variation_data' => :'item_variation_data',
        :'tax_data' => :'tax_data',
        :'discount_data' => :'discount_data',
        :'modifier_list_data' => :'modifier_list_data',
        :'modifier_data' => :'modifier_data'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'String',
        :'id' => :'String',
        :'updated_at' => :'String',
        :'version' => :'Integer',
        :'is_deleted' => :'BOOLEAN',
        :'catalog_v1_ids' => :'Array<CatalogV1Id>',
        :'present_at_all_locations' => :'BOOLEAN',
        :'present_at_location_ids' => :'Array<String>',
        :'absent_at_location_ids' => :'Array<String>',
        :'item_data' => :'CatalogItem',
        :'category_data' => :'CatalogCategory',
        :'item_variation_data' => :'CatalogItemVariation',
        :'tax_data' => :'CatalogTax',
        :'discount_data' => :'CatalogDiscount',
        :'modifier_list_data' => :'CatalogModifierList',
        :'modifier_data' => :'CatalogModifier'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'is_deleted')
        self.is_deleted = attributes[:'is_deleted']
      end

      if attributes.has_key?(:'catalog_v1_ids')
        if (value = attributes[:'catalog_v1_ids']).is_a?(Array)
          self.catalog_v1_ids = value
        end
      end

      if attributes.has_key?(:'present_at_all_locations')
        self.present_at_all_locations = attributes[:'present_at_all_locations']
      end

      if attributes.has_key?(:'present_at_location_ids')
        if (value = attributes[:'present_at_location_ids']).is_a?(Array)
          self.present_at_location_ids = value
        end
      end

      if attributes.has_key?(:'absent_at_location_ids')
        if (value = attributes[:'absent_at_location_ids']).is_a?(Array)
          self.absent_at_location_ids = value
        end
      end

      if attributes.has_key?(:'item_data')
        self.item_data = attributes[:'item_data']
      end

      if attributes.has_key?(:'category_data')
        self.category_data = attributes[:'category_data']
      end

      if attributes.has_key?(:'item_variation_data')
        self.item_variation_data = attributes[:'item_variation_data']
      end

      if attributes.has_key?(:'tax_data')
        self.tax_data = attributes[:'tax_data']
      end

      if attributes.has_key?(:'discount_data')
        self.discount_data = attributes[:'discount_data']
      end

      if attributes.has_key?(:'modifier_list_data')
        self.modifier_list_data = attributes[:'modifier_list_data']
      end

      if attributes.has_key?(:'modifier_data')
        self.modifier_data = attributes[:'modifier_data']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @id.to_s.length < 1
        invalid_properties.push("invalid value for 'id', the character length must be great than or equal to 1.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["ITEM", "CATEGORY", "ITEM_VARIATION", "TAX", "DISCOUNT", "MODIFIER_LIST", "MODIFIER"])
      return false unless type_validator.valid?(@type)
      return false if @id.nil?
      return false if @id.to_s.length < 1
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["ITEM", "CATEGORY", "ITEM_VARIATION", "TAX", "DISCOUNT", "MODIFIER_LIST", "MODIFIER"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, "id cannot be nil"
      end

      if id.to_s.length < 1
        fail ArgumentError, "invalid value for 'id', the character length must be great than or equal to 1."
      end

      @id = id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          id == o.id &&
          updated_at == o.updated_at &&
          version == o.version &&
          is_deleted == o.is_deleted &&
          catalog_v1_ids == o.catalog_v1_ids &&
          present_at_all_locations == o.present_at_all_locations &&
          present_at_location_ids == o.present_at_location_ids &&
          absent_at_location_ids == o.absent_at_location_ids &&
          item_data == o.item_data &&
          category_data == o.category_data &&
          item_variation_data == o.item_variation_data &&
          tax_data == o.tax_data &&
          discount_data == o.discount_data &&
          modifier_list_data == o.modifier_list_data &&
          modifier_data == o.modifier_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, id, updated_at, version, is_deleted, catalog_v1_ids, present_at_all_locations, present_at_location_ids, absent_at_location_ids, item_data, category_data, item_variation_data, tax_data, discount_data, modifier_list_data, modifier_data].hash
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
