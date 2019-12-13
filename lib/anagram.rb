# require 'ffi/aspell'
# speller = FFI::Aspell::Speller.new('en_US')

class Words
  attr_accessor(:words)

  def initialize(word_a, word_b)
    @words = [word_a.downcase, word_b.downcase]
    @modified_words = [word_a.downcase, word_b.downcase]
    @modified_words.each do |word|
      word.each_char do |chr|
        if !(chr =~ /[[:alpha:]]/)
          @modified_words.delete(word)
          word = word.delete(chr)
          @modified_words.prepend(word)
        end
      end
    end
  end

  def anagram?()
    if @modified_words[0].chars.sort.join.eql? @modified_words[1].chars.sort.join
      return true
    end
    false
  end

  def antigram?()
    @modified_words[0].each_char do |chr|
      if @modified_words[1].include?(chr)
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
