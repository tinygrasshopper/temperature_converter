class Fahrenheit
  attr_reader :value

  def initialize measurement
    @value = measurement
  end

  def to_celcius
    Celcius.new(((value - 32)/1.8).round(2))
  end

  def self.convert unit
    new(((unit.to_celcius.value*9/5) + 32).round(2))
  end

end