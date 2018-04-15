=begin
#voyager-server

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v0
Contact: hello@appscode.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module Kubernetes
  # IngressBackend describes all endpoints for a given service and port.
  class V1beta1IngressBackend
    # Serialized HAProxy rules to apply on server backend including request, response or header rewrite. acls also can be used. https://cbonte.github.io/haproxy-dconv/1.7/configuration.html#1
    attr_accessor :backend_rules

    # Host names to forward traffic to. If empty traffic will be forwarded to all subsets instance. If set only matched hosts will get the traffic. This is an handy way to send traffic to Specific StatefulSet pod. IE. Setting [web-0] will send traffic to only web-0 host for this StatefulSet, https://kubernetes.io/docs/tasks/stateful-application/basic-stateful-set/#creating-a-statefulset
    attr_accessor :host_names

    # User can specify backend name for using it with custom acl Otherwise it will be generated
    attr_accessor :name

    # Specifies the name of the referenced service.
    attr_accessor :service_name

    # Specifies the port of the referenced service.
    attr_accessor :service_port


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'backend_rules' => :'backendRules',
        :'host_names' => :'hostNames',
        :'name' => :'name',
        :'service_name' => :'serviceName',
        :'service_port' => :'servicePort'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'backend_rules' => :'Array<String>',
        :'host_names' => :'Array<String>',
        :'name' => :'String',
        :'service_name' => :'String',
        :'service_port' => :'IntstrIntOrString'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'backendRules')
        if (value = attributes[:'backendRules']).is_a?(Array)
          self.backend_rules = value
        end
      end

      if attributes.has_key?(:'hostNames')
        if (value = attributes[:'hostNames']).is_a?(Array)
          self.host_names = value
        end
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'serviceName')
        self.service_name = attributes[:'serviceName']
      end

      if attributes.has_key?(:'servicePort')
        self.service_port = attributes[:'servicePort']
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
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          backend_rules == o.backend_rules &&
          host_names == o.host_names &&
          name == o.name &&
          service_name == o.service_name &&
          service_port == o.service_port
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [backend_rules, host_names, name, service_name, service_port].hash
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
        temp_model = Kubernetes.const_get(type).new
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
