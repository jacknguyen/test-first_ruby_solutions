class Book
	attr_accessor :title

	def title= bookTitle
		titleCaps = Array.new
		wordExceptions = ['and','in','the','of','a','an']

		if bookTitle.include? " "
			bookTitle.split(" ").each do |word|
				if wordExceptions.include? word
					titleCaps.push(word)
				else
					titleCaps.push(word.capitalize)
				end
			end

			titleCaps[0].replace(titleCaps[0].capitalize)
			titleCaps = titleCaps.join(" ")
		else
			titleCaps = bookTitle.capitalize
		end

		@title = titleCaps
	end
end