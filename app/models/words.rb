class Words < ActiveRecord::Base
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

def self.value(word)
	value = 0
	points = {"a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1, "f" => 4,
		"g" => 2, "h" => 4, "i" => 1, "j" => 8, "k" => 5, "l" => 1, "m" => 3, "n" => 1,
		"o" => 1, "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1, "u" => 1, "v" => 4,
		"w" => 4, "x" => 8, "y" => 4, "z" => 10}
	word.split('').each {|letter| value += points[letter]}
	value
end

end