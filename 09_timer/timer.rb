class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_format num
		if num.to_s.length < 2
			"0#{num.to_s}"
		else
			num.to_s
		end
	end

	def time_string
		hours = @seconds/3600
		mins = @seconds%3600 / 60
		@seconds = (@seconds % 3600) % 60
		"#{time_format(hours)}:#{time_format(mins)}:#{time_format(@seconds)}"
	end

end
