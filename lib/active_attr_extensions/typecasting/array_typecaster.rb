require 'json'

module ActiveAttrExtensions
  module Typecasting
    # Typecasts an Object to a Array. If input is a string, attempts to parse it as JSON.
    #
    # @example Usage
    #   ArrayTypecaster.new.call(1) #=> [1]
    #
    # @since 0.6.1
    class ArrayTypecaster
      # Typecasts an object to a Array. If input is a string, attempts to parse it as JSON.
      #
      # Attempts to convert using #to_a if not a String.
      #
      # @param [Object, #to_a] value The object to typecast
      #
      # @return [Array, nil] The result of typecasting
      #
      # @since 0.5.0
      def call(value)
        value = JSON::parse(value) if value.is_a? String
        value.to_a if value.respond_to? :to_a
      end
    end
  end
end
