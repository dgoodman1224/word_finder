
file = File.open("word_list.txt")
file.each_line do |line|
	Words.create({word: line.chomp, can_word: Words.can(line.chomp), value: Words.value(line.chomp)})
end
