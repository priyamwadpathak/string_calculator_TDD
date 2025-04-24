require_relative 'string_calculator'
require 'rspec'

RSpec.describe StringCalculator do
	let(:calculator) { StringCalculator.new }

	it 'returns 0 for an empty string' do
		expect(calculator.add('')).to eq(0)
	end

	it 'returns the same number for single digit' do
		expect(calculator.add('5')).to eq(5)
	end

	it 'returns the sum of two numbers when two comma separated numbers are passed' do
		expect(calculator.add('1,5')).to eq(6)
	end

	it 'returns the sum of multiple numbers' do
		expect(calculator.add('1,2,3,4,5')).to eq(15)
	end

	it 'can handle newline and delimeters' do
		expect(calculator.add("1\n2,3")).to eq(6)
	end

	it 'can support custom delimiters' do
		expect(calculator.add("//;\n1;2")).to eq(3)
	end
end
