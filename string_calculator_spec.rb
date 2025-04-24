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
end
