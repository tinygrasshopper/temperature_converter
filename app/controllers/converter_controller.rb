class ConverterController < ApplicationController
  def index
    @available_units = Converter.available_units
    @result = Converter.convert(params[:measurement].to_f, params[:from], params[:to]) if params[:measurement].present?
  end

end