class Words
	def initialize
		@words = words
		@canned_words = init_can(@words)
		p @canned_words
	end

	def words
		file = File.open("../../word_list.txt")
		words = Array.new
		counter = 0
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
		@canned_words.include?(can(word)) ? @words[@canned_words.index(can(word))] : false
	end
end

scrabble = Words.new