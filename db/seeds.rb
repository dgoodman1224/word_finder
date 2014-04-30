def can(word)
word.split('').sort.join
end

file = File.open("word_list.txt")
file.each_line do |line|
	Words.create({word: line.chomp, can_word: can(line.chomp)})
end