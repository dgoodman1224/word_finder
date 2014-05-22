require_relative 'spec_helper'
require 'rspec'
	describe Search do 
		context "Can return a word" do 
			it "returns the word it matches" do 
				expect(Search.find_bingos('gulp')).to eq "plug"
			end
			it "returns false when not there" do 
				expect(scrabble.find('returnsfalse')).to be false
			end
		end	

end
