require 'active_support/json'

module ActiveAttrExtensions
  module Typecasting
    # Typecasts an Object to a Hash
    #
    # @since 0.6.1
    class HashTypecaster
      # Typecasts an object to a Hash. If input is a string, attempts to parse it as JSON.
      #
      # Attempts to convert using #to_a if not a String.
      #
      # @param [Object, #to_a] value The object to typecast
      #
      # @return [Array, nil] The result of typecasting
      #
      # @since 0.5.0
      def call(value)
        value = ActiveSupport::JSON.decode(value) if value.is_a? String
        value.is_a?(Hash) ? value : {}
      end
    end
  end
end
