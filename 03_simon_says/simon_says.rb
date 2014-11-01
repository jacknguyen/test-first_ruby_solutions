def echo saying
	saying
end

def shout saying
	saying.upcase
end

def repeat saying, times=2
	count = times
	phrase = saying

	while count >= 2
		phrase += " #{saying}"
		count -= 1
	end

	phrase
end

def start_of_word word, index
	word.slice(0..index-1)
end

def first_word word
	word.split(' ')[0]
end

def titleize word
	phrase = Array.new
	smallWords = ["and","over","the"]

	word.split(' ').each_with_index do |val, index|
		if (smallWords.include? val) && (index > 0)
			phrase.push(val)
		else
			phrase.push(val.capitalize)
		end
	end

	phrase.join(" ")
end