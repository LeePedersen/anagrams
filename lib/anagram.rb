# require 'ffi/aspell'
# speller = FFI::Aspell::Speller.new('en_US')

class Words
  attr_accessor(:words)

  def initialize(word_a, word_b)
    @words = [word_a.downcase, word_b.downcase]
  end

  def anagram()
    result = ""
    if @words[0].chars.sort.join.eql? @words[1].chars.sort.join
      result.concat("#{@words[0]} and #{@words[1]} are anagrams")
    else
      result.concat("#{@words[0]} and #{@words[1]} are not anagrams")
    end
    return result
  end

  def antigram()
    result = ""
    @words[0].each_char do |chr|
      if @words[1].include?(chr)
        result.concat("#{@words[0]} and #{@words[1]} are not antigrams")
      end
    end
    if result == ""
      result.concat("#{@words[0]} and #{@words[1]} are antigrams")
    end
    not_real = not_real_words().join(" ")
    if not_real.length > 0
      result.concat(". However, this/these words are not real: #{not_real}")
    end
    return result
  end

  def not_real_words()
    "aeiouy".each_char do |chr|
      not_real = []
      @words.each do |word|
        if !word.include?(chr)
          not_real.push(word)
        end
      end
      return not_real
    end

    # if speller.correct?(@words[0])
    #   true
    # else
    #   false
    # end

  end
end
