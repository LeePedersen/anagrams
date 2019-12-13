require './lib/anagram_check'

class Anagram_create
  attr_accessor(:word_bank)
  attr_accessor(:input_word)
  attr_accessor(:anagram_count)

  def initialize(input_word, word_bank)
    @word_bank = word_bank
    @input_word = input_word
    @anagram_count = 0
  end

  def find()
    anagrams = []
    @word_bank.each do |word|
      new_anagram = Anagrams.new(@input_word, word)
      if new_anagram.anagram?()
        anagrams.push(word)
        @anagram_count += 1
      end
    end
    if @anagram_count > 1
      return anagrams.join(", ")
    else
      return "No anagrams"
    end
  end
end
