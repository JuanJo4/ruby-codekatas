class PerfectNumber
	attr_accessor :max

	def initialize max
		@max = max		
	end

	def run
		max.times do |i|			
			if isPerfect?(max - i)
				puts "#{max - i} is Perfect Number!"
				break
			end
		end
	end

	def isPerfect? num
		digits = []
		(num - 1).times do |i|
			digits << i + 1 if num % (i + 1) == 0
		end
		digits.reduce(:+) == num
	end
end