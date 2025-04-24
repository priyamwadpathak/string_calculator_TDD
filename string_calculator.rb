class StringCalculator
	def add(numbers)
		return 0 if numbers.strip.empty?
			
		return numbers.strip.to_i if numbers.strip.length == 1

	end
end
