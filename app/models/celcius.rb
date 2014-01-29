class Celcius
  attr_reader :value

  def initialize measurement
    @value = measurement
  end

  def to_celcius
    self
  end

  def self.convert unit
    unit.to_celcius
  end
end