module Search
	def self.find_bingos(letters)
		array_of_letters = letters.split('')
		array_of_letters.include?("$") ? blank_tile(array_of_letters) : just_letters(array_of_letters)
	end

	def self.can(array_of_letters)
		array_of_letters.sort.join
	end

	def self.just_letters(array_of_letters)
		canned = array_of_letters.sort.join
		Words.where("can_word = ?", canned)
	end

	def self.blank_tile(array_of_letters)
		counter = 0
		alph = ('a'..'z').to_a
		results = []
		array_of_letters.delete("$")
		26.times do
			array_of_letters << alph[counter]
			counter = counter + 1
			canned = can(array_of_letters)
			found_matches = Words.where("can_word = ?", canned)
			found_matches.each {|match| results << match} if found_matches
			array_of_letters.pop
		end
		results
	end
end