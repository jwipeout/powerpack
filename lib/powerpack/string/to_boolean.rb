unless String.method_defined? :to_boolean
  class String
    # Turns ('true' or 'false', '1' or '0', 'yes' or 'no') to TrueClass or FalseClass instance
    #
    # @return [Boolean] true if the string matches include?, false otherwise
    #
    # @example
    #   'true'.to_boolean #=> true
    #
    # @example
    #   '0'.to_boolean #=> true
    #
    # @example
    #   'false'.to_boolean #=> false
    def to_boolean
      ['true', '1', 'yes'].include? self
    end
  end
end
