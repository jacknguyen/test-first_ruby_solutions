# fahrenheit to celcius
def ftoc temp
	((temp - 32) * 5) / 9
	# 1 f == 5/9 c
	# freezing point of water 0 c == 32 f
end

# celcius to fahrenheit 
def ctof temp
	((temp * 9.0)/5.0) + 32.0
end