require 'spec_helper'

describe '/' do
  it 'should route the root to the conversion controller' do
    expect(:get => '/').to route_to(controller: 'converter', action: 'index')
  end
end