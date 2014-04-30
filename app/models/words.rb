class Words  < ActiveRecord::Base
	def self.can(word)
		word.split('').sort.join
	end

	def self.excess(word)
		counter = 0
		alph = ('a'..'z').to_a
		results = []
		26.times do
			array = word.split('')
			array << alph[counter]
			counter = counter + 1
			canned = can(array.join)
			found_matches = Words.where("can_word = ?", canned)
			found_matches.each {|match| results << match}
		end
		results
	end
end