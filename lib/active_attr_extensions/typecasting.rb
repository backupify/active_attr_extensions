require 'active_attr_extensions/typecasting/array_typecaster'
require 'active_attr_extensions/typecasting/hash_typecaster'

module ActiveAttrExtensions::Typecasting
  @@type_map = {
    Array      => ArrayTypecaster,
    Hash       => HashTypecaster
  }

  def self.included(base)
    base.class_eval do
      alias old_typecaster_for typecaster_for

      # Resolve a Class to a typecaster
      #
      # @param [Class] type The type to cast to
      #
      # @return [#call, nil] The typecaster to use
      #
      # @since 0.6.0
      def typecaster_for(type)
        typecaster = @@type_map[type]
        if (typecaster)
          typecaster.new
        else
          old_typecaster_for(type)
        end
      end
    end
  end
end
