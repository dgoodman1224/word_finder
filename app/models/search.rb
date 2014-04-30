class Search < ActiveRecord::Base
	def initialize
		@canned_words = init_can(@words)
	end

	def init_can(input_array)
		input_array.map do |word|
		  word.split('').sort.join
		end
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