require_relative 'spec_helper'

describe Words do
	context "Words model has variables" do
		test = Words.create({word: "test", can_word: Words.can("test"), value: Words.value("test")})
		it "Creates an instance of the class" do
			expect(Words.count).to eq test.id
		end
		it "Has all attributes" do
			expect(test.word).not_to eq nil
			expect(test.can_word).not_to eq nil
			expect(test.value).not_to eq nil
		end

	end
end