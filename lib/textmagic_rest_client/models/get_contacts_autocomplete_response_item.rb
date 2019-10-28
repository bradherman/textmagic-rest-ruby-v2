=begin
#TextMagic API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'date'

module TextMagic
  class GetContactsAutocompleteResponseItem
    # Id of entity. 0 if object is a Reply
    attr_accessor :entity_id

    # Entry type: * **contact** if it is related to a contact * **list** if it is related to a contact list * **reply** if it is related to an incoming message 
    attr_accessor :entity_type

    # Id of contact/list if entityType is contact/list OR phone number if entityType is reply.
    attr_accessor :value

    # Name of the contact/list if entityType is contact/list OR phone number if entityType is reply.
    attr_accessor :label

    # If contact or list was shared by another sub-account then name if this user will be shown.
    attr_accessor :shared_by

    # If contact or list was shared by another sub-account then `true` will be set.
    attr_accessor :is_shared

    # Contact avatar URI.
    attr_accessor :avatar

    # If contact has been marked as favorite.
    attr_accessor :favorited

    # Owner id of the contact/list (if it was shared).
    attr_accessor :user_id

    attr_accessor :country_name

    attr_accessor :qposition

    attr_accessor :rposition

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
        :'entity_id' => :'entityId',
        :'entity_type' => :'entityType',
        :'value' => :'value',
        :'label' => :'label',
        :'shared_by' => :'sharedBy',
        :'is_shared' => :'isShared',
        :'avatar' => :'avatar',
        :'favorited' => :'favorited',
        :'user_id' => :'userId',
        :'country_name' => :'countryName',
        :'qposition' => :'qposition',
        :'rposition' => :'rposition'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'entity_id' => :'Integer',
        :'entity_type' => :'String',
        :'value' => :'String',
        :'label' => :'String',
        :'shared_by' => :'String',
        :'is_shared' => :'BOOLEAN',
        :'avatar' => :'String',
        :'favorited' => :'BOOLEAN',
        :'user_id' => :'Integer',
        :'country_name' => :'String',
        :'qposition' => :'Integer',
        :'rposition' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'entityId')
        self.entity_id = attributes[:'entityId']
      end

      if attributes.has_key?(:'entityType')
        self.entity_type = attributes[:'entityType']
      end

      if attributes.has_key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.has_key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.has_key?(:'sharedBy')
        self.shared_by = attributes[:'sharedBy']
      end

      if attributes.has_key?(:'isShared')
        self.is_shared = attributes[:'isShared']
      end

      if attributes.has_key?(:'avatar')
        self.avatar = attributes[:'avatar']
      end

      if attributes.has_key?(:'favorited')
        self.favorited = attributes[:'favorited']
      end

      if attributes.has_key?(:'userId')
        self.user_id = attributes[:'userId']
      end

      if attributes.has_key?(:'countryName')
        self.country_name = attributes[:'countryName']
      end

      if attributes.has_key?(:'qposition')
        self.qposition = attributes[:'qposition']
      end

      if attributes.has_key?(:'rposition')
        self.rposition = attributes[:'rposition']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @entity_id.nil?
        invalid_properties.push('invalid value for "entity_id", entity_id cannot be nil.')
      end

      if @entity_type.nil?
        invalid_properties.push('invalid value for "entity_type", entity_type cannot be nil.')
      end

      if @value.nil?
        invalid_properties.push('invalid value for "value", value cannot be nil.')
      end

      if @label.nil?
        invalid_properties.push('invalid value for "label", label cannot be nil.')
      end

      if @shared_by.nil?
        invalid_properties.push('invalid value for "shared_by", shared_by cannot be nil.')
      end

      if @is_shared.nil?
        invalid_properties.push('invalid value for "is_shared", is_shared cannot be nil.')
      end

      if @avatar.nil?
        invalid_properties.push('invalid value for "avatar", avatar cannot be nil.')
      end

      if @favorited.nil?
        invalid_properties.push('invalid value for "favorited", favorited cannot be nil.')
      end

      if @user_id.nil?
        invalid_properties.push('invalid value for "user_id", user_id cannot be nil.')
      end

      if @country_name.nil?
        invalid_properties.push('invalid value for "country_name", country_name cannot be nil.')
      end

      if @qposition.nil?
        invalid_properties.push('invalid value for "qposition", qposition cannot be nil.')
      end

      if @rposition.nil?
        invalid_properties.push('invalid value for "rposition", rposition cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @entity_id.nil?
      return false if @entity_type.nil?
      entity_type_validator = EnumAttributeValidator.new('String', ['reply', 'contact', 'list'])
      return false unless entity_type_validator.valid?(@entity_type)
      return false if @value.nil?
      return false if @label.nil?
      return false if @shared_by.nil?
      return false if @is_shared.nil?
      return false if @avatar.nil?
      return false if @favorited.nil?
      return false if @user_id.nil?
      return false if @country_name.nil?
      return false if @qposition.nil?
      return false if @rposition.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] entity_type Object to be assigned
    def entity_type=(entity_type)
      validator = EnumAttributeValidator.new('String', ['reply', 'contact', 'list'])
      unless validator.valid?(entity_type)
        fail ArgumentError, 'invalid value for "entity_type", must be one of #{validator.allowable_values}.'
      end
      @entity_type = entity_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          entity_id == o.entity_id &&
          entity_type == o.entity_type &&
          value == o.value &&
          label == o.label &&
          shared_by == o.shared_by &&
          is_shared == o.is_shared &&
          avatar == o.avatar &&
          favorited == o.favorited &&
          user_id == o.user_id &&
          country_name == o.country_name &&
          qposition == o.qposition &&
          rposition == o.rposition
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [entity_id, entity_type, value, label, shared_by, is_shared, avatar, favorited, user_id, country_name, qposition, rposition].hash
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
        temp_model = TextMagic.const_get(type).new
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
