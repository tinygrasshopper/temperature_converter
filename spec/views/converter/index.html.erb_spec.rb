require 'spec_helper'

describe 'converter/index.html.erb' do
  it 'should render available_units' do
    assign(:available_units, ['celcius', 'fahrenheit'])

    render

    expect(rendered).to match /celcius/
    expect(rendered).to match /fahrenheit/
  end
end