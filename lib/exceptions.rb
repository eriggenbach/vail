class OnlyPositiveIntegers < ArgumentError
  def initialize(msg = "Please use a non-negative input for rotation", exception_type = "negativieInput")
    @exception_type = exception_type
    super(msg)
  end
end