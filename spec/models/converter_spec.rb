require 'spec_helper'

describe Converter do
  context :available_units do
    it 'should return the available units' do
      expect(described_class.available_units).to eq(%w(celcius fahrenheit))

    end
  end
end