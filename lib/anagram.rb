# require 'ffi/aspell'
# speller = FFI::Aspell::Speller.new('en_US')

class Words
  attr_accessor(:words)

  def initialize(word_a, word_b)
    @words = [word_a.downcase, word_b.downcase]
  end

  def anagram?()
    if @words[0].chars.sort.join.eql? @words[1].chars.sort.join
      return true
    end
    false
  end

  def antigram?()
    @words[0].each_char do |chr|
      if @words[1].include?(chr)
        return false
      end
    end
    true
  end

  def not_real_words()
    not_real = []
    @words.each do |word|
      real = false
      "aeiouy".each_char do |chr|
        if word.include?(chr)
          real = true
        end
      end
      if real == false
        not_real.push(word)
      end
    end
    return not_real
  end
end
