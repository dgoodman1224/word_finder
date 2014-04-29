class Words
	def initialize
		@words = words
		@canned_words = init_can(@words)
	end

	def words
		file = File.open("../../word_list.txt")
		words = Array.new
		file.each_line do |line|
			words << line.chomp
		end
		words
	end

	def init_can(input_array)
		input_array.map do |word|
		  word.split('').sort.join
		end
	end

	def can(word)
		word.split('').sort.join
	end

	def show_dict
		@words.each {|word| puts word}
		@canned_words.each {|word| puts word}
	end

	def find(word)
		canned = can(word)
		results = []
		@canned_words.each_with_index do |word, index|
			results << index if word == canned
		end
		results.map {|index| @canned_words[index] }
	end

end

scrabble = Words.new
p scrabble.find("race")