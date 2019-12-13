class Words
  attr_accessor(:words)

  def initialize(word_a, word_b)
    @words = [word_a, word_b]
  end

  def anagram?()
    false
  end
end
