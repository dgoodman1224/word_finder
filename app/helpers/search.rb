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
		total = array_of_letters.select {|letter| letter == "$"}
		array_of_letters.delete("$")
		total.count == 1 ? one_blank_tile(array_of_letters) : two_blank_tiles(array_of_letters)
	end

	def self.one_blank_tile(array_of_letters)
		counter = 0
		alph = ('a'..'z').to_a
		results = []
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

	def self.two_blank_tiles(array_of_letters)
		counter = 0
		alph = ('a'..'z').to_a
		results = []
		26.times do
			array_of_letters << alph[counter]
			new_counter = 0
			new_alph = (alph[counter]..'z').to_a
			(26-counter).times do
				array_of_letters << new_alph[new_counter]
				new_counter += 1
				canned = can(array_of_letters)
				found_matches = Words.where("can_word = ?", canned)
				found_matches.each {|match| results << match} if found_matches
				array_of_letters.pop
			end
			counter += 1
			array_of_letters.pop
		end
		results
	end
end