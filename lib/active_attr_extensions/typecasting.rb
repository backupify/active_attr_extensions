module ActiveAttrExtensions::Typecasting
  @@type_map = {
    Array      => ArrayTypecaster,
    Hash       => HashTypecaster
  }

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
      super type
    end
  end
end
