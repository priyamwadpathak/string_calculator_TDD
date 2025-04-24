class StringCalculator
	def add(numbers)
		numbers = numbers.strip
		return 0 if numbers.empty?
			
		return numbers.to_i if numbers.length == 1

		# delimiter = [',', '\n']
		delimiter = /,|\n/

		nums = numbers.split(delimiter).map(&:to_i)

		nums.sum
	end

	private

	# def sum_two_numbers(nums)
	# 	nums.split(',').map(&:to_i).sum
	# end
end
