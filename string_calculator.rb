class StringCalculator
	def add(numbers)
		numbers = numbers.strip
		return 0 if numbers.empty?

		delimiter = /,|\n/

		nums = numbers.split(delimiter).map(&:to_i)

		nums.sum
	end
end
