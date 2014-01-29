require 'spec_helper'

describe Fahrenheit do
  it 'can be initialize with a value' do
    fahrenheit = Fahrenheit.new(100.00)

    expect(fahrenheit.value).to eq(100.00)
  end

  it 'can be converted to celcius' do
    fahrenheit = Fahrenheit.new(100.00)

    expect(fahrenheit.to_celcius.value).to eq(37.78)
  end

  it 'should convert from other units which respond to to_celcius' do
    unit = double('unit', to_celcius: double(value: 37.78))

    fahrenheit = Fahrenheit.convert(unit)

    expect(fahrenheit.value).to eq(100.00)
  end
end