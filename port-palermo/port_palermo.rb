module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    case ship_identifier[0..2].upcase.to_sym
    when :OIL, :GAS
      :A
    else
      :B
    end
  end
end
