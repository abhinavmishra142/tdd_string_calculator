require 'rails_helper'

RSpec.describe 'String Calculator' do

  let(:calculator) { StringCalculator.new }

  it 'returns 0 for an empty string' do
    expect(calculator.add('')).to eq(0)
  end

  it 'It should return self number for a single number' do
    calculator = StringCalculator.new
    expect(calculator.add('1')).to eq(1)
  end

  it 'It should return the sum of two comma separated numbers' do
    calculator = StringCalculator.new
    expect(calculator.add('1,5')).to eq(6)
  end

  it 'It should supports newlines and comma separator' do
    calculator = StringCalculator.new
    expect(calculator.add('1\n2,3')).to eq(6)
  end

  it 'It should supports custom delimiter' do
    calculator = StringCalculator.new
    expect(calculator.add("//;\n1;2")).to eq(3)
  end

  it 'It should not alow negative numbers' do
    calculator = StringCalculator.new
    expect { calculator.add("1,-2,3,-4") }
      .to raise_error("negative numbers not allowed -2, -4")
  end
end
