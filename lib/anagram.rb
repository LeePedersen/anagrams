# require 'ffi/aspell'
# speller = FFI::Aspell::Speller.new('en_US')

class Words
  attr_accessor(:words)

  def initialize(word_a, word_b)
    @words = [word_a.downcase, word_b.downcase]
  end

  def anagram()
    if @words[0].chars.sort.join.eql? @words[1].chars.sort.join
      true
    else
      false
    end
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
    return result
  end

  def not_real_words()
    "aeiouy".each_char do |chr|
      if !@words[0].include?(chr)
        return "#{word[0]} is not a real word"
      elsif !@words[1].include?(chr)
        return "#{word[1]} is not a real word"
      end
    end

    # if speller.correct?(@words[0])
    #   true
    # else
    #   false
    # end

  end
end
