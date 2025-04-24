class StringCalculator
	def add(numbers)
		numbers = numbers.strip
		return 0 if numbers.empty?
			
		return numbers.to_i if numbers.length == 1

		return sum_two_numbers(numbers)
	end

	private

	def sum_two_numbers(nums)
		nums.split(',').map(&:to_i).sum
	end
end
