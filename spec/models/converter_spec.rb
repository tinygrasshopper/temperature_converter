require 'spec_helper'

describe Converter do
  context :available_units do
    it 'should return the available units' do
      expect(described_class.available_units).to eq(%w(celcius fahrenheit))
    end
  end

  context 'convert' do
    it 'should convert from celcius to fahrenheit' do
      result = Converter.convert(100.00, 'celcius', 'fahrenheit')
      expect(result.value).to eq(212.00)
    end

    it 'should convert from fahrenheit to celcius' do
      result = Converter.convert(212.00, 'fahrenheit', 'celcius')
      expect(result.value).to eq(100.00)
    end

    it 'should convert from celcius to celcius' do
      result = Converter.convert(100.00, 'celcius', 'celcius')
      expect(result.value).to eq(100.00)
    end

    it 'should convert from fahrenheit to fahrenheit' do
      result = Converter.convert(100.00, 'celcius', 'celcius')
      expect(result.value).to eq(100.00)
    end
  end
end