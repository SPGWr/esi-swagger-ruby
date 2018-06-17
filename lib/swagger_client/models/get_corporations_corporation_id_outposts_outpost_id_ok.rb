=begin
#EVE Swagger Interface

#An OpenAPI for EVE Online

OpenAPI spec version: 0.8.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module SwaggerClient
  # 200 ok object
  class GetCorporationsCorporationIdOutpostsOutpostIdOk
    attr_accessor :coordinates

    # docking_cost_per_ship_volume number
    attr_accessor :docking_cost_per_ship_volume

    # office_rental_cost integer
    attr_accessor :office_rental_cost

    # The entity that owns the station (e.g. the entity whose logo is on the station services bar)
    attr_accessor :owner_id

    # reprocessing_efficiency number
    attr_accessor :reprocessing_efficiency

    # reprocessing_station_take number
    attr_accessor :reprocessing_station_take

    # A list of services the given outpost provides
    attr_accessor :services

    # The owner ID that sets the ability for someone to dock based on standings.
    attr_accessor :standing_owner_id

    # The ID of the solar system the outpost rests in
    attr_accessor :system_id

    # The type ID of the given outpost
    attr_accessor :type_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'coordinates' => :'coordinates',
        :'docking_cost_per_ship_volume' => :'docking_cost_per_ship_volume',
        :'office_rental_cost' => :'office_rental_cost',
        :'owner_id' => :'owner_id',
        :'reprocessing_efficiency' => :'reprocessing_efficiency',
        :'reprocessing_station_take' => :'reprocessing_station_take',
        :'services' => :'services',
        :'standing_owner_id' => :'standing_owner_id',
        :'system_id' => :'system_id',
        :'type_id' => :'type_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'coordinates' => :'GetCorporationsCorporationIdOutpostsOutpostIdCoordinates',
        :'docking_cost_per_ship_volume' => :'Float',
        :'office_rental_cost' => :'Integer',
        :'owner_id' => :'Integer',
        :'reprocessing_efficiency' => :'Float',
        :'reprocessing_station_take' => :'Float',
        :'services' => :'Array<GetCorporationsCorporationIdOutpostsOutpostIdService>',
        :'standing_owner_id' => :'Integer',
        :'system_id' => :'Integer',
        :'type_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'coordinates')
        self.coordinates = attributes[:'coordinates']
      end

      if attributes.has_key?(:'docking_cost_per_ship_volume')
        self.docking_cost_per_ship_volume = attributes[:'docking_cost_per_ship_volume']
      end

      if attributes.has_key?(:'office_rental_cost')
        self.office_rental_cost = attributes[:'office_rental_cost']
      end

      if attributes.has_key?(:'owner_id')
        self.owner_id = attributes[:'owner_id']
      end

      if attributes.has_key?(:'reprocessing_efficiency')
        self.reprocessing_efficiency = attributes[:'reprocessing_efficiency']
      end

      if attributes.has_key?(:'reprocessing_station_take')
        self.reprocessing_station_take = attributes[:'reprocessing_station_take']
      end

      if attributes.has_key?(:'services')
        if (value = attributes[:'services']).is_a?(Array)
          self.services = value
        end
      end

      if attributes.has_key?(:'standing_owner_id')
        self.standing_owner_id = attributes[:'standing_owner_id']
      end

      if attributes.has_key?(:'system_id')
        self.system_id = attributes[:'system_id']
      end

      if attributes.has_key?(:'type_id')
        self.type_id = attributes[:'type_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @coordinates.nil?
        invalid_properties.push('invalid value for "coordinates", coordinates cannot be nil.')
      end

      if @docking_cost_per_ship_volume.nil?
        invalid_properties.push('invalid value for "docking_cost_per_ship_volume", docking_cost_per_ship_volume cannot be nil.')
      end

      if @office_rental_cost.nil?
        invalid_properties.push('invalid value for "office_rental_cost", office_rental_cost cannot be nil.')
      end

      if @owner_id.nil?
        invalid_properties.push('invalid value for "owner_id", owner_id cannot be nil.')
      end

      if @reprocessing_efficiency.nil?
        invalid_properties.push('invalid value for "reprocessing_efficiency", reprocessing_efficiency cannot be nil.')
      end

      if @reprocessing_station_take.nil?
        invalid_properties.push('invalid value for "reprocessing_station_take", reprocessing_station_take cannot be nil.')
      end

      if @services.nil?
        invalid_properties.push('invalid value for "services", services cannot be nil.')
      end

      if @standing_owner_id.nil?
        invalid_properties.push('invalid value for "standing_owner_id", standing_owner_id cannot be nil.')
      end

      if @system_id.nil?
        invalid_properties.push('invalid value for "system_id", system_id cannot be nil.')
      end

      if @type_id.nil?
        invalid_properties.push('invalid value for "type_id", type_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @coordinates.nil?
      return false if @docking_cost_per_ship_volume.nil?
      return false if @office_rental_cost.nil?
      return false if @owner_id.nil?
      return false if @reprocessing_efficiency.nil?
      return false if @reprocessing_station_take.nil?
      return false if @services.nil?
      return false if @standing_owner_id.nil?
      return false if @system_id.nil?
      return false if @type_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          coordinates == o.coordinates &&
          docking_cost_per_ship_volume == o.docking_cost_per_ship_volume &&
          office_rental_cost == o.office_rental_cost &&
          owner_id == o.owner_id &&
          reprocessing_efficiency == o.reprocessing_efficiency &&
          reprocessing_station_take == o.reprocessing_station_take &&
          services == o.services &&
          standing_owner_id == o.standing_owner_id &&
          system_id == o.system_id &&
          type_id == o.type_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [coordinates, docking_cost_per_ship_volume, office_rental_cost, owner_id, reprocessing_efficiency, reprocessing_station_take, services, standing_owner_id, system_id, type_id].hash
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
        temp_model = SwaggerClient.const_get(type).new
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
