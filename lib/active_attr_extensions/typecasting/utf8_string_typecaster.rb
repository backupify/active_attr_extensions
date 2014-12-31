module ActiveAttrExtensions
  module Typecasting

    # A dummy class to represent UTF8-formatted strings.
    # Used to look up
    UTF8String = Class.new

    # Typecasts an Object to a UTF8-formatted String
    #
    # @example Usage
    #   UTF8StringTypecaster.new.call(1) #=> "1"
    #
    class UTF8StringTypecaster
      # Typecasts an object to a String
      #
      # Attempts to convert using #to_s.
      #
      # @example Typecast a Fixnum
      #   typecaster.call(1) #=> "1"
      #
      # @param [Object, #to_s] value The object to typecast
      #
      # @return [String, nil] The result of typecasting
      #
      # @since 0.5.0
      def call(value)
        if value.respond_to? :to_s
          value.to_s.force_encoding('UTF-8')
        end
      end
    end
  end
end
