class ConverterController < ApplicationController
  def index
    @available_units = Converter.available_units
  end

end