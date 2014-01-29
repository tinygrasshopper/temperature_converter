require 'spec_helper'

describe ConverterController do
  context :index do
    it 'should assign available units' do
      get :index

      expect(assigns(:available_units)).to eq(Converter.available_units)
    end
  end
end