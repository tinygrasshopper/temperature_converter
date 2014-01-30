class Converter
  def self.available_units
    return ['celcius', 'fahrenheit']
  end

  def self.convert measurement, from, to
    unit = to_class(from).new(measurement)
    to_class(to).convert(unit)
  end

  private
  def self.to_class(unit)
    unit.capitalize.constantize
  end
end