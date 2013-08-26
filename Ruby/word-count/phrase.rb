class Phrase
	def initialize(phrase)
		@phrase = phrase.downcase.scan(/\w+/)
	end
	def word_count
		@phrase.each_with_object(Hash.new(0)) { |word, count| count[word] += 1 }
	end
end