require 'rspec'
	describe Words do 
		context "Can return a word" do 
			scrabble = Words.new
			it "returns the word it matches" do 
				expect(scrabble.find('gulp')).to eq "plug"
			end
			it "returns false when not there" do 
				expect(scrabble.find('returnsfalse')).to be false
			end
		end	

end
