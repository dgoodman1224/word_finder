
# file = File.open("word_list.txt")
# file.each_line do |line|
# 	Words.create({word: line.chomp, can_word: Words.can(line.chomp), value: Words.value(line.chomp)})
# end

100.times do 
	word = 'racer'
	Words.create({word: word, can_word: Words.can(word), value: Words.value(word)})
	end
