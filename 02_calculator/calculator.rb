def add num1, num2
	num1 + num2
end

def subtract num1, num2
	num1 - num2
end

def sum array
	if array.length === 0
		0
	elsif array.length === 1
		array[0]
	else
		y = 0
		array.each do |x|
			y += x
		end

		return y
	end
end

def multiply array
	y = array[0]
	(1..array.length-1).each do |x|
		y = y * array[x] 
	end

	return y
end

def power num1, num2
	num1**num2
end

def factorial num
	curNum = num
	factorNum = 1

	while curNum > 1
		factorNum *= curNum
		curNum -= 1
	end

	return factorNum
end