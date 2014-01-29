require 'spec_helper'

describe ConverterController do
  context :index do
    it 'should assign available units' do
      get :index

      expect(assigns(:available_units)).to eq(Converter.available_units)
    end

    it 'should convert using the Converter' do
      result = double('result')
      expect(Converter).to receive(:convert)
                           .with(100.00, 'celcius', 'kelvin')
                           .and_return(result)

      get :index, measurement: '100', from: 'celcius', to: 'kelvin'

      expect(assigns(:result)).to eq(result)
    end

    it 'should not call the Converter.convert if no measurement given' do
      expect(Converter).not_to receive(:convert)

      get :index, measurement: nil
    end
  end
end