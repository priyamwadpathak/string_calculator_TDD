class StringCalculator
	def add(numbers)
		numbers = numbers.strip
		return 0 if numbers.empty?

		delimiter = /,|\n/
		
		if numbers.start_with?('//')
			delimiter_line, numbers = numbers.split("\n", 2)
			custom_delimiter = delimiter_line[2..]
			delimiter = Regexp.escape(custom_delimiter)
		end

		nums = numbers.split(/#{delimiter}/).map(&:to_i)

		check_for_negative!(nums)

		nums.sum
	end

	private

	def check_for_negative!(nums)
		negatives = nums.select { |n| n < 0 }
		raise "negative numbers not allowed #{negatives.join(',')}" unless negatives.empty?
	end
end
