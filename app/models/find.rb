require 'rspec'
class Words
	def initialize
		@words = words
		@canned_words = init_can(@words)
	end

	def words
		file = File.open("brit-a-z.txt")
		words = Array.new
		counter = 0
		file.each_line do |line|
			words << line
		end
		p words
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

thing = Words.new
