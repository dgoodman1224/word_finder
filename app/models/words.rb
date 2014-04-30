class Words  < ActiveRecord::Base
	def self.can(word)
		word.split('').sort.join
	end
end