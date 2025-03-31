class StringCalculatorsController < ApplicationController
  def index
  end

  def calculate
    @result = nil
    @error = nil

    begin
      calculator = StringCalculator.new
      @result = calculator.add(params[:numbers])
    rescue => e
      @error = e.message
    end
  end
end