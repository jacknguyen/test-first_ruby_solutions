def translate input
	$vowels = ['a','e','i','o','u']
	$phonemes = ['sch','qu']
	words = Array.new
	output = Array.new

	if (input.include? " ")
		words = input.split(" ")
	else
		words.push(input)
	end

	words.each do |word|
		letters = String.new
		vowel = 0
		phonemeExists = false

		# checks each word if a phoneme exists
		$phonemes.each do |phoneme|
			if word.include? phoneme
				vowel = word.index(phoneme) + phoneme.length
				phonemeExists = true
				break
			end
		end

		# see if phoneme exists
		if !phonemeExists
			# finds where the vowel is in each word
			word.split('').each do |letter|
				if $vowels.include? letter
					vowel = word.index(letter)
					break
				end
			end
		end

		# return vowel
		letters = word.slice!( 0, vowel )
		output.push(word + letters + "ay")
	end

	output.join(' ')
end