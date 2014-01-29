require 'spec_helper'

describe Celcius do
  it 'can be initialize with a value' do
    celcius = Celcius.new(100.00)

    expect(celcius.value).to eq(100.00)
  end

  it 'responds to to_celcius' do
    celcius = Celcius.new(100.00)

    expect(celcius.to_celcius).to eq(celcius)
  end

  it 'should convert from other units which respond to to_celcius' do
    unit = double('unit', to_celcius: double(value: 12.00))

    celcius = Celcius.convert(unit)

    expect(celcius.value).to eq(12.00)


  end

end